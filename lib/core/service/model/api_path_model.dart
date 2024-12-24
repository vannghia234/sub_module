class ApiPathModel {
  final String serviceHost;
  final String endPoint;
  final Map<String, String>? params;

  ApiPathModel(
      {required this.serviceHost,
      required this.endPoint,
      required this.params});

  String get toStringPath {
    String path = serviceHost;
    path += endPoint;
    if (params != null) {
      if (params!.isNotEmpty) {
        path += "?";
        params?.forEach(
          (key, value) {
            path += "&$key=$value";
          },
        );
      }
    }
    return path;
  }
}
