import 'package:flutter/material.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/pages/signup/beneficiary.dart';
import 'package:radi_app/views/pages/signup/risk_horizon_knowledge.dart';
import 'package:radi_app/views/pages/signup/trust.dart';
import 'package:radi_app/views/screens/signup_and_Login/terms.dart';

class InfoDetails3 extends StatefulWidget {
  const InfoDetails3({super.key});

  @override
  State<InfoDetails3> createState() => _InfoDetails3State();
}

class _InfoDetails3State extends State<InfoDetails3> {
  final formKeyInfoKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Details"),
          foregroundColor: AppColors.appBarForegroundColor,
          backgroundColor: AppColors.appBarBackgroundColor),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Form(
              key: formKeyInfoKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const IntrustView(),
                  const Beneficiary(),
                  const RiskHorizonKnowledge(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 30, 0, 82),
                            )),
                        onPressed: () {
                          if (formKeyInfoKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const TermsAndConditions();
                              },
                            ));
                          }
                        },
                        child: const Text("Continue")),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
