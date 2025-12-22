import 'package:pokedex/core/networks/error_handler.dart';

class BaseResponse<T> {
  final String message;
  final ResponseCode responseCode;
  final T result;

  BaseResponse({
    required this.message,
    required this.responseCode,
    required this.result,
  });

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, ResponseCode responseCode, Function fromJsonData) {
    return BaseResponse(
      message: json['detail'] ?? json['error_msg'] ?? '',
      responseCode: responseCode,
      result: fromJsonData(json),
    );
  }
}