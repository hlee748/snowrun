// // Package imports:
// import 'dart:convert';
//
// import 'package:kc_tablet/injection.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
//
// AndroidNotificationChannel? channel;
//
// FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
// }
//
// Future<void> setUpPushNotification() async {
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   channel = const AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description: 'This channel is used for important notifications.',
//     // description
//     importance: Importance.high,
//   );
//
//   const AndroidInitializationSettings initializationSettingsAndroid =
//       AndroidInitializationSettings('@drawable/ic_default_notification');
//   const IOSInitializationSettings initializationSettingsIOS =
//       IOSInitializationSettings(
//     requestAlertPermission: false,
//     requestBadgePermission: false,
//     requestSoundPermission: false,
//   );
//   const InitializationSettings initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//     iOS: initializationSettingsIOS,
//   );
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//       onSelectNotification: selectNotification);
//
//   /// Create an Android Notification Channel.
//   if (channel != null) {
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel!);
//   }
//
//   /// iOS Foreground
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
// }
//
// Future<void> selectNotification(String? payload) async {
//   if (payload != null) {
//     debugPrint('notification payload: $payload');
//     final messageData = json.decode(payload) as Map<String, dynamic>;
//
//     if (messageData.containsKey('type')) {
//       final type = messageData['type'] as String;
//       switch (type) {
//         case "deeplink":
//           final deepLink = messageData['deeplink'] as String;
//           final appRouter = getIt<AppRouter>();
//           appRouter.pushNamed(deepLink);
//           break;
//       }
//     }
//   }
// }
//
// void setupInteractedMessageTerminated() {
//   // Terminated
//   Future.delayed(const Duration(seconds: 2), () {
//     final initialMessage = FirebaseMessaging.instance.getInitialMessage();
//     initialMessage.then((message) {
//       if (message != null) {
//         _handleMessage(message, isTerminated: true);
//       }
//     });
//   });
// }
//
// void setupInteractedMessage() {
//   // Background
//   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     _handleMessage(message, isTerminated: false);
//   });
//
//   // Foreground
//   FirebaseMessaging.onMessage.listen(
//     (RemoteMessage message) {
//       final RemoteNotification? notification = message.notification;
//       final AndroidNotification? android = notification?.android;
//       if (notification != null && android != null) {
//         final AndroidNotificationDetails androidNotificationDetails =
//             AndroidNotificationDetails(
//           channel!.id,
//           channel!.name,
//           channelDescription: channel!.description,
//         );
//         final NotificationDetails platformChannelSpecifics =
//             NotificationDetails(android: androidNotificationDetails);
//
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//           platformChannelSpecifics,
//           payload: json.encode(message.data),
//         );
//       }
//     },
//   );
// }
//
// void _handleMessage(RemoteMessage message, {required bool isTerminated}) {
//   if (message.data.containsKey('type')) {
//     final type = message.data['type'] as String;
//     switch (type) {
//       case "deeplink":
//         final deepLink = message.data['deeplink'] as String;
//         final appRouter = getIt<AppRouter>();
//         appRouter.pushNamed(deepLink);
//         break;
//     }
//   }
// }