import 'package:pokedex/core/networks/error_handler.dart';

class BaseResponseList<T> {
  final String message;
  final int count;
  final String next;
  final String previous;
  final ResponseCode responseCode;
  final List<T> results;

  BaseResponseList({
    required this.message,
    required this.count,
    required this.next,
    required this.previous,
    required this.responseCode,
    required this.results,
  });

  factory BaseResponseList.fromJson(Map<String, dynamic> json, ResponseCode responseCode, Function(List<dynamic>) fromJsonData) {
    return BaseResponseList(
      message: json['detail'] ?? json['error_msg'] ?? '',
      count: json['count'] ?? 0,
      next: json['next'] ?? '',
      previous: json['previous'] ?? '',
      responseCode: responseCode,
      results: json['results'] != null ? fromJsonData(json['results'] is String ? json : json['results']) : []
    );
  }
}