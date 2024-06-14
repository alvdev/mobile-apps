import 'package:fpdart/fpdart.dart';
import 'package:movies/core/errors/failure.dart';
import 'package:movies/core/params/params.dart';
import '../entities/template_entity.dart';
import '../repositories/template_repository.dart';

class GetTemplate {
  final TemplateRepository templateRepository;

  GetTemplate({required this.templateRepository});

  Future<Either<Failure, TemplateEntity>> call({
    required TemplateParams templateParams,
  }) async =>
      await templateRepository.getTemplate(
        templateParams: templateParams,
      );
}
