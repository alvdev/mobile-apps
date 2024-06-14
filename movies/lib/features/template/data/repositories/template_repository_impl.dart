import 'package:fpdart/fpdart.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:movies/core/errors/exceptions.dart';
import 'package:movies/core/errors/failure.dart';
import 'package:movies/core/params/params.dart';
import '../../domain/repositories/template_repository.dart';
import '../datasources/template_local_datasource.dart';
import '../datasources/template_remote_datasource.dart';
import '../models/template_model.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  final TemplateRemoteDatasource remoteDatasource;
  final TemplateLocalDatasource localDatasource;
  var hasInternetConnection = InternetConnection().hasInternetAccess;

  TemplateRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
    required this.hasInternetConnection,
  });

  @override
  Future<Either<Failure, TemplateModel>> getTemplate(
      {required TemplateParams templateParams}) async {
    if (await hasInternetConnection) {
      try {
        TemplateModel remoteTemplate =
            await remoteDatasource.getTemplate(templateParams: templateParams);

        localDatasource.cacheTemplate(templateToCache: remoteTemplate);

        return Right(remoteTemplate);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        TemplateModel localTemplate = await localDatasource.getLastTemplate();
        return Right(localTemplate);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'This is a cache exception'));
      }
    }
  }
}
