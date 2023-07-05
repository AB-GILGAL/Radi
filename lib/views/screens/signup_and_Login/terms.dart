import 'package:flutter/material.dart';

import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/signup_and_Login/otp.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool agree = false;
  route() {
    return Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const OTPView();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Terms And Condition"),
          foregroundColor: AppColors.appBarForegroundColor,
          backgroundColor: AppColors.appBarBackgroundColor),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 84.4,
            vertical: MediaQuery.of(context).size.height / 84.4),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    }),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 64.92),
                    child: const Text(
                        "I/We hereby declare that all the information submitted by me/us is correct, true and valid, that by my/our request, to open and maintain securities account(s) in my/our name and undertake to notify Radi App of any changes my particulars or information as may be necessary.\n\nI/We also declare that i have read thoroughly and understood the content of the application and have given my consent by virtue of signature(s) on this form. I/We consent that investment decisions are my/our prerogative without sole reliance on the investment advice received from Radi App. Radi App accepts no liability for any direct or consequential loss arising from my/our decision\n\nI/We also declare that all debits incurred on my securities account(s) by virtue of my trade orders shall be settled by me accordingly",
                        style: TextStyle(fontSize: 17)),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
                  onPressed: agree ? route : null,
                  child: const Text("Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
