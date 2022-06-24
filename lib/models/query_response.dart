class MyQueryResponse<T> {
  String? refreshToken;
  String? accessToken;
  bool ok;
  T? data;
  List<dynamic>? errors;

  MyQueryResponse({
    this.refreshToken,
    this.accessToken,
    this.ok = false,
    this.data,
    this.errors,
  });

  @override
  String toString() {
    return '{ok: $ok, data: $data, errors: $errors}';
  }
}
