import 'package:fpdart/fpdart.dart';
import 'package:movies/core/errors/failure.dart';
import 'package:movies/core/params/params.dart';
import '../entities/template_entity.dart';

abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate({
    required TemplateParams templateParams,
  });
}
