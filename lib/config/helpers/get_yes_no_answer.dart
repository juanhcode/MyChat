import 'package:dio/dio.dart';
import 'package:mychat/domain/entities/message.dart';
import 'package:mychat/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer () async {

    final response = await _dio.get("https://yesno.wtf/api");
    final YesNoModel yesNoModel = YesNoModel.fromJson(response.data);
    return yesNoModel.toMessageEntity();
  }

}