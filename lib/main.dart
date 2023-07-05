// import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radi_app/utils/pointer.dart';
import 'package:radi_app/views/templates/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCu1-hjsKqu-SSLHgxHRAe2xqts3caUODA",
          appId: "1:487194264452:android:f4d28a5c5a7fefcffa53d1",
          messagingSenderId: "487194264452",
          projectId: "radi-app-c1a48"));
  runApp( const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: const SplashScreen(),
    );
  }
}
