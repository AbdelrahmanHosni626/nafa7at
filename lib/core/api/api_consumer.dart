abstract class ApiConsumer {
  Future<dynamic> get(
    String endPointPath, {
    String? userAccessToken,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<dynamic> post(
    String endPointPath, {
    dynamic body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> put(
    String endPointPath, {
    dynamic body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> patch(
    String endPointPath, {
    Map<String, dynamic>? body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> delete(
    String endPointPath, {
    Map<String, dynamic>? body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
