import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../error/exception.dart';
import '../locator/api_service_path.dart';

const _defaultApiWaitingDuration = Duration(seconds: 30);
const _defaultApiGetFileWaitingDuration = Duration(minutes: 5);

// TODO hanle EXception Here

// Future<void> handleAPIExceptionByStatusCode(
//   String uri,
//   int statusCode,
//   String method,
// ) async {
//   if (statusCode == 0) return;
//   print("[API failure] $statusCode $method $uri ");
//   if (statusCode == 1) {
//     throw BadRequestException();
//   }
// }

class ApiServiceClient {
  static Future<Map<String, String>> _headers({
    bool withToken = true,
  }) async {
    // String? token = await LocalAuthenticationDataSource().getAccessToken();
    return {
      HttpHeaders.acceptHeader: "application/json",
      "x-api-key": APIServicePath.xApiKey,
      // if (withToken == true) HttpHeaders.authorizationHeader: "Bearer $token",
      HttpHeaders.contentTypeHeader: "application/json"
    };
  }

  // TODO Local Data here
  // static LocalAuthenticationDataSource localData =
  //     LocalAuthenticationDataSource();

  static Future<Map<String, dynamic>> get({
    required String uri,
    bool withToken = true,
    Duration? apiWaitingDuration,
    bool isSecondTime = false,
  }) async {
    final client = http.Client();
    try {
      Map<String, String> headers = await _headers(withToken: withToken);
      Future.delayed(apiWaitingDuration ?? _defaultApiWaitingDuration)
          .whenComplete(() => client.close());
      http.Response response =
          await client.get(Uri.parse(uri), headers: headers);

      // await handleAPIExceptionByStatusCode(uri, response.statusCode, "GET");
      Map<String, dynamic> result =
          json.decode(utf8.decode(response.bodyBytes));
      return result;
    } on SocketException {
      throw ServerErrorException();
    } catch (e) {
      if (isSecondTime) {
        rethrow;
      } else {
        return await get(
            uri: uri,
            withToken: withToken,
            apiWaitingDuration: apiWaitingDuration,
            isSecondTime: true);
      }
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>> put({
    required String uri,
    bool withToken = true,
    Map<String, dynamic>? params,
    Duration? apiWaitingDuration,
    bool isAuthentication = false,
    bool isSecondTime = false,
  }) async {
    final client = http.Client();
    try {
      Map<String, String> headers = await _headers(withToken: withToken);
      Future.delayed(apiWaitingDuration ?? _defaultApiGetFileWaitingDuration)
          .whenComplete(() => client.close());

      // Tạo yêu cầu multipart
      var request = http.MultipartRequest('PUT', Uri.parse(uri));
      request.headers.addAll(headers);

      // Thêm các trường dữ liệu vào yêu cầu
      if (params != null) {
        params.forEach((key, value) {
          request.fields[key] = value.toString();
        });
      }

      // Gửi yêu cầu và nhận phản hồi
      http.StreamedResponse streamedResponse = await request.send();
      http.Response response = await http.Response.fromStream(streamedResponse);

      // await handleAPIExceptionByStatusCode(uri, response.statusCode, "PUT");

      Map<String, dynamic> result =
          json.decode(utf8.decode(response.bodyBytes));
      return result;
    } on SocketException {
      throw ServerErrorException();
    } catch (e) {
      if (isSecondTime) {
        rethrow;
      } else {
        return await put(
          uri: uri,
          params: params,
          isSecondTime: true,
          isAuthentication: isAuthentication,
          withToken: withToken,
          apiWaitingDuration: apiWaitingDuration,
        );
      }
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>> post({
    required String uri,
    bool withToken = true,
    Map<String, dynamic>? params,
    Duration? apiWaitingDuration,
    bool isSecondTime = false,
    bool isAuthentication = false,
    bool withIdKey = false,
  }) async {
    final client = http.Client();
    try {
      Map<String, String> headers = await _headers(withToken: withToken);

      Future.delayed(apiWaitingDuration ?? _defaultApiWaitingDuration)
          .whenComplete(() => client.close());

      var request = http.MultipartRequest('POST', Uri.parse(uri));
      request.headers.addAll(headers);

      if (params != null) {
        params.forEach((key, value) {
          request.fields[key] = value.toString();
        });
      }

      if (withIdKey) {
        // TODO TOKEN HERE
        // final token = await localData.getAccessToken();

        // if (token != null && token.isNotEmpty) {
        //   request.fields['idkey'] = token;
        // }
      }

      http.StreamedResponse streamedResponse = await request.send();
      http.Response response = await http.Response.fromStream(streamedResponse);
      // await handleAPIExceptionByStatusCode(
      //   uri,
      //   jsonDecode(response.body)["error"],
      //   "POST",
      // );

      Map<String, dynamic> result =
          json.decode(utf8.decode(response.bodyBytes));

      return result;
    } on SocketException {
      throw ServerErrorException();
    } catch (e) {
      if (isSecondTime) {
        rethrow;
      } else {
        return await post(
            params: params,
            uri: uri,
            isAuthentication: isAuthentication,
            withToken: withToken,
            apiWaitingDuration: apiWaitingDuration,
            isSecondTime: true);
      }
    } finally {
      client.close();
    }
  }
}
