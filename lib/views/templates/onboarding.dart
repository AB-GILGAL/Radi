import 'package:flutter/material.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/signup_and_Login/login.dart';
import 'package:radi_app/views/screens/signup_and_Login/signup.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height / 42.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.18),
              Image.asset("assets/images/3.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 28.13,
                  color: AppColors.textColor,
                ),
              ),
              Text(
                "Radi App",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 21.1,
                    color: AppColors.textColor2,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "New Generation Stock App",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 49.64,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.18),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16.88,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.buttonColor,
                      )),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginView();
                      },
                    ));
                  },
                  child: Text("Login",
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.height / 46.88)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 16.88,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              side: BorderSide(
                                  color: AppColors.buttonColor, width: 1.5),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.appBarBackgroundColor,
                        )),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const SignUpView();
                        },
                      ));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 46.88,
                          color: AppColors.textColor,
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
