import 'package:equatable/equatable.dart';

class BaseResponse<T> extends Equatable {
  final T data;

  const BaseResponse({required this.data});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) {
    return BaseResponse(
      data: fromJsonT(json), // هنا مش هنفترض وجود `success` أو `message`
    );
  }

  @override
  List<Object?> get props => [data];
}
