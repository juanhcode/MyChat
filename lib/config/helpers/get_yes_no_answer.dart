import 'package:dio/dio.dart';
import 'package:mychat/domain/entities/message.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer () async {

    final response = await _dio.get("https://yesno.wtf/api");

    throw UnimplementedError();

  }
}