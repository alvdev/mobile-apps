import 'package:dio/dio.dart';
import 'package:yes_no/domain/entities/message_entity.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    return Message(
      message: response.data['answer'],
      fromWho: FromWho.him,
      imageUrl: response.data['image'],
    );
  }
}
