import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:vntrip/core/util/app_toaster.dart';

class AppUtil {
  static unFocusScopeNode(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  // static Future<Position?> getCurrentLocation() async {
  //   try {
  //     // Check and request location permissions
  //     LocationPermission permission = await Geolocator.checkPermission();
  //     if (permission == LocationPermission.denied ||
  //         !await Geolocator.isLocationServiceEnabled()) {
  //       permission = await Geolocator.requestPermission();
  //       if (permission == LocationPermission.denied) {
  //         AppToast.showError("Location permission denied.");
  //         return null;
  //       }
  //     }

  //     // Handle permanent denial
  //     if (permission == LocationPermission.deniedForever) {
  //       await Geolocator.openAppSettings();
  //       AppToast.showError("Location permission denied forever.");
  //       return null;
  //     }

  //     // Get current location with improved error handling
  //     return await Geolocator.getCurrentPosition(
  //         locationSettings: const LocationSettings(
  //       accuracy: LocationAccuracy.high,
  //     ));
  //   } catch (e) {
  //     print('Error getting location: $e');
  //     return null;
  //   }
  // }

  // // Hàm mở Google Maps
  // static Future<void> openGoogleMaps(
  //     {required BuildContext context, required String destinationName}) async {
  //   try {
  //     String destination = destinationName;
  //     const String origin = 'Current+Location';
  //     Position? position = await getCurrentLocation();
  //     double? latitude = position?.latitude;
  //     double? longitude = position?.longitude;
  //     String url =
  //         'https://www.google.com/maps/dir/?api=1&origin=$origin&destination=$destination';

  //     print("latitude: $latitude, longitude: $longitude");
  //     if (longitude != null || latitude != null) {
  //       url =
  //           'https://www.google.com/maps/dir/?api=1&origin=$latitude,$longitude&destination=$destination';
  //     }
  //     // Origin có thể để 'Current+Location' để Google Map tự tìm vị trí hiện tại của người dùng
  //     final Uri googleMapsUri = Uri.parse(url);

  //     if (await canLaunchUrl(googleMapsUri)) {
  //       await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
  //     } else {
  //       await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
  //     }
  //   } catch (e) {
  //     AppToast.showError("Can't open Google Maps");
  //   }
  // }

  // // URL scheme mở app YouTube (Android/iOS)
  // // Nếu app không mở được, fallback sang youtubeWebUri.
  // static Future<void> openYouTube({required String query}) async {
  //   try {
  //     // Trước tiên, thử mở ứng dụng YouTube bằng scheme URL
  //     // Android: "vnd.youtube://results?search_query=..."
  //     // iOS: "youtube://..."
  //     // Ở đây, ví dụ dùng scheme iOS. Tuỳ từng nền tảng và có thể cần tuỳ chỉnh.
  //     final q = query.replaceAll(' ', '+');
  //     final Uri youtubeAppUri =
  //         Uri.parse('https://www.youtube.com/results?search_query=$q');

  //     if (await canLaunchUrl(youtubeAppUri)) {
  //       print("youtubeAppUri: $youtubeAppUri");
  //       await launchUrl(youtubeAppUri);
  //     } else {
  //       await launchUrl(youtubeAppUri);
  //     }
  //   } catch (e) {
  //     AppToast.showError("Can't open YouTube");
  //   }
  // }

  // static Future<void> openTikTok({required String query}) async {
  //   try {
  //     final webQuery = query.replaceAll(' ', '+');
  //     var tiktokUri =
  //         Uri.parse('tiktok://search?q=${Uri.encodeComponent(webQuery)}');
  //     print('tiktokWebUri: $tiktokUri');

  //     if (await canLaunchUrl(tiktokUri)) {
  //       await launchUrl(tiktokUri, mode: LaunchMode.externalApplication);
  //     } else {
  //       await launchUrl(tiktokUri, mode: LaunchMode.externalApplication);
  //     }
  //   } catch (e) {
  //     AppToast.showError("Can't open TikTok");
  //   }
  // }
}
