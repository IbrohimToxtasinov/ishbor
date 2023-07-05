class MyResponse {
  String errorMessage;
  String? statusCode;
  dynamic data;

  MyResponse({
    this.errorMessage = "",
    this.data,
    this.statusCode,
  });
}
