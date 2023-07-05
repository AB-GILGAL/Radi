import 'package:flutter/material.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/pages/signup/otpInput.dart';
import 'package:radi_app/views/screens/signup_and_Login/continue_to_dashboard.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("OTP"),
          foregroundColor: AppColors.appBarForegroundColor,
          backgroundColor: AppColors.appBarBackgroundColor),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 56.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You've got mail",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 28.13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "We have sent you the OTP verification code to your\nemail address. Check your mail and enter the\ncode below",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 56.2),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OTPInput(_fieldOne, true), // auto focus
                OTPInput(_fieldTwo, false),
                OTPInput(_fieldThree, false),
                OTPInput(_fieldFour, false)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            SizedBox(
              height: MediaQuery.of(context).size.height / 16.88,
              width: double.infinity,
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
                        return const ContToDashBoard();
                      },
                    ));
                  },
                  child: Text(
                    "Create account",
                    style: TextStyle(color: AppColors.buttonTextColor),
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
