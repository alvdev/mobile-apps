import 'package:dio/dio.dart';
import 'package:yes_no/domain/entities/message_entity.dart';
import 'package:yes_no/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return Message(
      message: yesNoModel.answer,
      fromWho: FromWho.him,
      imageUrl: yesNoModel.image,
    );
  }
}
