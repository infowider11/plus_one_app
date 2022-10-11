// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';
//
//
// import 'package:ecare/services/webservices.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
//
//
// // {receiver: 51, sender: 55, screen: chat_page}
// FirebaseMessaging messaging = FirebaseMessaging.instance;
// const AndroidNotificationChannel channel = AndroidNotificationChannel('high_importance_channel',  'High Importance Notifications', importance: Importance.high, playSound: true);
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
// InitializationSettings initializationSettings = InitializationSettings(
//   android: AndroidInitializationSettings('@mipmap/ic_launcher'),
//   // iOS: IOSInitializationSettings(),
// );
//
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('A bg message just showed up :  ${message.messageId}');
//   print('${message.data}');
//   if(message.data['screen']=='booking'){
//   print('firebase notification baghhsid callled ');
//
//   }
// }
//
//
// class FirebasePushNotifications{
//   //   WidgetsFlutterBinding.ensureInitialized();
//   //   await Firebase.initializeApp();
//   // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//   // await flutterLocalNotificationsPlugin
//   //     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//   //     ?.createNotificationChannel(channel);
//   //
//   // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//   // alert: true,
//   // badge: true,
//   // sound: true,
//   // );
//   ///step 1: Add this to main
//
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//   // await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   // await flutterLocalNotificationsPlugin
//   //     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//   //     ?.createNotificationChannel(channel);
//   //
//   // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//   // alert: true,
//   // badge: true,
//   // sound: true,
//   //
//   // );
//   // await FirebasePushNotifications.firebaseSetup();
//   /// step 2:
//   ///Create certificate Key from here
//   /// https://console.firebase.google.com/project/cycle-up-338208/settings/cloudmessaging
//
//   /// step 3 :
//   /// get permission
//   /// step 4 :
//   /// get token and then store it to database, so that we can send notification to that specific
//   /// android token.
//
//   static const String webPushCertificateKey = 'BJ3wSN_85nGmZWnFk2LPrJap8zpeAOdJv6bOwUjyUUJH3JHJBA_ShjAGtocoulD5V9X7p_ET8GdTZR7DC6sAZok';
//   /// this token is used to send notification // use the returned token to send messages to users from your custom server
//   static String? token;
//
//
//
//   static Future<NotificationSettings> getPermission()async{
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     print('User granted permission: ${settings.authorizationStatus}');
//     return settings;
//   }
//
//
//   static Future<String?> getToken()async{
//     token = await messaging.getToken(
//         vapidKey: webPushCertificateKey
//     );
//     return token;
//   }
//
//
//   static Future<void> firebaseSetup()async {
//     // FirebaseMessaging.onBackgroundMessage((message)async{
//     //   print)
//     // })
//     FirebaseMessaging.onMessage.listen((RemoteMessage message)async {
//       print('firebase messaging is being listened');
//       try{
//         RemoteNotification? notification = message.notification;
//         var data = message.data;
//
//         // log('notidata+--'+data.toString());
//         AndroidNotification? android = message.notification?.android;
//         log('this is notification bb bb ---  ');
//         print('___________${notification.toString()}');
//         print('________________');
//         print(message.data);
//         print('________________');
//         if (notification != null && android != null) {
//           // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = flutterLocalNotificationsPlugin;
//           await flutterLocalNotificationsPlugin.show(
//               notification.hashCode,
//               // null,
//               notification.title,
//               notification.body,
//               NotificationDetails(
//                 android: AndroidNotificationDetails(
//                   channel.id,
//                   channel.name,
//                   color: Colors.blue,
//                   playSound: true,
//                   icon: '@mipmap/ic_launcher',
//                 ),
//               ),
//               payload:jsonEncode(data)
//           );
//           print('the payLoad is $data');
//         }
//       }catch(e){
//         print('error in listening notifications $e');
//       }
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async{
//       print('A new onMessageOpenedApp event was published!');
//       print(message.data);
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       String title = "";
//       log('this is notification aa aa ---  ');
//
//       if(notification!=null){
//         title = notification.title.toString();
//       }
//       if (notification != null && android != null) {
//         log('this is notification ---  ');
//       }
//     });
//
//     FirebaseMessaging.instance.getToken().then((value)async{
//       if(value!=null){
//
//         // sharedPreferences = await SharedPreferences.getInstance();
//
//         // if (sharedPreferences.getString('user_data') != null){
//         //   userData = jsonDecode(sharedPreferences.getString('user_data')!);
//         // }
//         // String? userId = await getCurrentUserId();
//         // if(userData!=null) {
//         //   await Webservices.updateDeviceToken(
//         //       userId: userData!['id'], token: value);
//         // }else{
//         //   print('device token not updated');
//         // }
//       }
//
//       log("-----------------------device token -------"+value.toString());
//     });
//
//   }
//
//
//
// }