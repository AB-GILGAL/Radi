import 'package:flutter/material.dart';
import 'package:radi_app/views/templates/home.dart';

import '../../../utils/colors.dart';

class ContToDashBoard extends StatefulWidget {
  const ContToDashBoard({super.key});

  @override
  State<ContToDashBoard> createState() => _ContToDashBoardState();
}

class _ContToDashBoardState extends State<ContToDashBoard> {
  final formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height / 42.2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Thanks For Providing Us",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 33.76,
              ),
            ),
            Text(
              "With Your Details",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 33.76,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                        return const HomeView();
                      },
                    ));
                  },
                  child: const Text("Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
