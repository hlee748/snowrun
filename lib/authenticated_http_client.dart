// // Dart imports:
// import 'dart:convert';
// import 'dart:developer';
//
// // Package imports:
// import 'package:firebase_performance/firebase_performance.dart';
// import 'package:http/http.dart';
// import 'package:injectable/injectable.dart';
//
// @LazySingleton()
// class AuthenticatedHttpClient extends BaseClient {
//   // LocalStore localStore;
//   FirebasePerformance performance = FirebasePerformance.instance;
//
//   // AuthenticatedHttpClient({required this.localStore});
//   AuthenticatedHttpClient();
//
//   // Use a memory cache to avoid local storage access in each call
//   String _inMemoryToken = '';
//
//   String get userAccessToken {
//     // use in memory token if available
//     // if (_inMemoryToken.isNotEmpty) return _inMemoryToken;
//
//     // otherwise load it from local storage
//     // ignore: join_return_with_assignment
//     _inMemoryToken = _loadTokenFromLocalStore();
//
//     return _inMemoryToken;
//   }
//
//   @override
//   Future<StreamedResponse> send(BaseRequest request) {
//     // intercept each call and add the Authorization header if token is available
//     if (userAccessToken.isNotEmpty) {
//       request.headers
//           .putIfAbsent('Authorization', () => 'Token $userAccessToken');
//     }
//     log(request.headers.toString());
//
//     return request.send();
//   }
//
//   String _loadTokenFromLocalStore() {
//     // return localStore.deviceBox.get(currentUserKey, defaultValue: '') as String;
//     return "pi";
//   }
//
//   // Don't forget to reset the cache when logging out the user
//   void reset() {
//     _inMemoryToken = '';
//   }
//
//   void printDebug(String type, Uri url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) {
//     log("\n\t[$type]\n\t[URI]:$url\n\t[Headers]:$headers\n");
//     if (body != null) {
//       if (body.toString().length < 300) {
//         log("[body]:$body");
//       } else {
//         log("[body]:${body.toString().substring(0, 300)}...");
//       }
//     }
//     if (encoding != null) {
//       log("[encoding]:$encoding");
//     }
//   }
//
//   @override
//   Future<String> read(Uri url, {Map<String, String>? headers}) {
//     printDebug('READ', url, headers: headers);
//     return super.read(url, headers: headers);
//   }
//
//   @override
//   Future<Response> get(Uri url, {Map<String, String>? headers}) async {
//     printDebug('GET', url, headers: headers);
//     return await super.get(url, headers: headers);
//   }
//
//   @override
//   Future<Response> post(Uri url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
//     printDebug('POST', url, headers: headers, body: body, encoding: encoding);
//     return await super
//         .post(url, headers: headers, body: body, encoding: encoding);
//   }
//
//   @override
//   Future<Response> put(Uri url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
//     printDebug('PUT', url, headers: headers, body: body, encoding: encoding);
//     return await super
//         .put(url, headers: headers, body: body, encoding: encoding);
//   }
//
//   @override
//   Future<Response> patch(Uri url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
//     printDebug('PATCH', url, headers: headers, body: body, encoding: encoding);
//     return await super
//         .patch(url, headers: headers, body: body, encoding: encoding);
//   }
//
//   @override
//   Future<Response> delete(Uri url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
//     printDebug('DELETE', url, headers: headers, body: body, encoding: encoding);
//     return await super
//         .delete(url, headers: headers, body: body, encoding: encoding);
//   }
// }