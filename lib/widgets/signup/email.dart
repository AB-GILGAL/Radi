import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../firebase/sign_up_controllers.dart';

class EmailTextfield extends StatefulWidget {
  const EmailTextfield({super.key});

  @override
  State<EmailTextfield> createState() => _EmailTextfieldState();
}

class _EmailTextfieldState extends State<EmailTextfield> {
  static final RegExp emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+");
  final controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10.55,
      child: TextFormField(
        controller: controller.email,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your email";
          } else if (!emailValid.hasMatch(value)) {
            return "Please enter valid email";
          }
          return null;
        },
        decoration: InputDecoration(
          label: Text(
            "Email",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height / 46.88),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.height / 562.6),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 84.4)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.height / 562.6),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 84.4)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.height / 562.6),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 84.4)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: const Color.fromARGB(255, 30, 0, 82),
                  width: MediaQuery.of(context).size.height / 562.6),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 84.4)),
        ),
      ),
    );
  }
}
