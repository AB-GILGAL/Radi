import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/signup_and_Login/login.dart';
import 'package:radi_app/views/templates/get_started.dart';
import 'package:radi_app/views/templates/home.dart';
import 'package:radi_app/views/templates/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String keyLogin = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Image.asset("assets/images/3.png"),
          Text("RADI APP",
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: MediaQuery.of(context).size.height / 24.11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.37),
          Align(
            alignment: Alignment.bottomCenter,
            child: SpinKitWave(
              color: AppColors.spinColor,
              size: MediaQuery.of(context).size.height / 28.13,
            ),
          )
        ],
      ),
    );
  }

  void whereToGo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPreferences.getBool(keyLogin);
    Timer(const Duration(seconds: 10), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const HomeView();
            },
          ));
        } else {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const LoginView();
            },
          ));
        }
      } else {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const GettingStarted();
          },
        ));
      }
    });
  }
}
