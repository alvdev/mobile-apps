import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies/core/errors/exceptions.dart';
import 'package:movies/core/params/params.dart';
import '../../data/models/template_model.dart';

abstract class TemplateRemoteDatasource {
  Future<TemplateModel> getTemplate({required TemplateParams templateParams});
}

class TemplateRemoteDatasourceImpl implements TemplateRemoteDatasource {
  final Dio dio;

  TemplateRemoteDatasourceImpl({required this.dio});

  @override
  Future<TemplateModel> getTemplate({
    required TemplateParams templateParams,
  }) async {
    final response = await dio.get(
        dotenv.env['API_URL'] ?? 'https://api.themoviedb.org/3/search/movie/',
        queryParameters: {
          'api_key': dotenv.env['API_KEY'],
        });

    if (response.statusCode == 200) {
      return TemplateModel.fromJson(json: response.data);
    } else {
      throw ServerException();
    }
  }
}
