class RestClientException implements Exception {
  final String mesage;
  final int? code;

  RestClientException(this.mesage, {this.code});

  @override
  String toString() => "RestClientException(code: $code, message: $mesage))";
}
