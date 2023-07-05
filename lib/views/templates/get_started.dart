import 'package:flutter/material.dart';
import 'package:radi_app/views/templates/onboarding.dart';
import 'package:radi_app/widgets/get_started%20widget.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              Image.asset("assets/images/3.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text("RADI APP",
                  style: TextStyle(
                      color: Color.fromARGB(255, 30, 0, 82),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
              textOne(
                  textName: "See what's happening in the real world",
                  fontTextSize: 16),
              textOne(textName: "right now with Radi App", fontTextSize: 16),
              SizedBox(height: MediaQuery.of(context).size.height * 0.32),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 30, 0, 82)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const OnBoarding();
                        },
                      ));
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(fontSize: 17),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              textOne(
                  textName: "By Continuing you accept privacy",
                  fontTextSize: 15),
              textOne(textName: "Policy & Terms of Use", fontTextSize: 15),
            ],
          ),
        ),
      ),
    );
  }
}
