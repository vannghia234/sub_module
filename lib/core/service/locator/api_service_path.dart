
import '../model/api_path_model.dart';

class APIServicePath {
  static const String serviceHost = 'https://api.vdtdata.com';
  static const String xApiKey = "2Jlksl4gps9ttAm6IR6iG71F3kya2xBU";

  static String searchLocation({Map<String, String>? params}) {
    return ApiPathModel(
            serviceHost: serviceHost,
            endPoint: '/ingresshub/gisproxy/complex_autocomplete',
            params: params)
        .toStringPath;
  }

  static String forwardGeocoding({Map<String, String>? params}) {
    return ApiPathModel(
            serviceHost: serviceHost,
            endPoint: '/idunn/v1/autocomplete',
            params: params)
        .toStringPath;
  }

  static String reverseGeocoding({
    required double lat,
    required double lon,
    Map<String, String>? params,
  }) {
    return ApiPathModel(
            serviceHost: serviceHost,
            endPoint: '/idunn/v1/places/latlon:$lat:$lon',
            params: params)
        .toStringPath;
  }

  static String nearbyPOI({Map<String, String>? params}) {
    return ApiPathModel(
      serviceHost: serviceHost,
      endPoint: '/idunn/v1/places/vnland',
      params: params,
    ).toStringPath;
  }
}
