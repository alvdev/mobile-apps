import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:movies/core/errors/exceptions.dart';
import '../models/template_model.dart';

abstract class TemplateLocalDatasource {
  Future<void> cacheTemplate({required TemplateModel? templateToCache});
  Future<TemplateModel> getLastTemplate();
}

const cachedTemplate = 'CACHED_TEMPLATE';

class TemplateLocalDatasourceImpl implements TemplateLocalDatasource {
  final SharedPreferences sharedPreferences;

  TemplateLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<TemplateModel> getLastTemplate() {
    final jsonString = sharedPreferences.getString(cachedTemplate);
    if (jsonString != null) {
      return Future.value(
          TemplateModel.fromJson(json: json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheTemplate({required TemplateModel? templateToCache}) async {
    if (templateToCache != null) {
      sharedPreferences.setString(
        cachedTemplate,
        json.encode(
          templateToCache.toJson(),
        ),
      );
    } else {
      throw CacheException();
    }
  }
}
