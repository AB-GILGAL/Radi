import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../firebase/sign_up_controllers.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController secondPasswordController =
      TextEditingController();

  bool obserText = true;
  bool obserText2 = true;
  final controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 10.55,
          child: TextFormField(
            controller: controller.password,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obserText,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Your Password";
              } else if (value.length < 7) {
                return "Password should be more than 6";
              }
              return null;
            },
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obserText = !obserText;
                  });
                },
                child: Icon(
                  obserText == true ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              label: Text(
                "password",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 46.88),
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
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        SizedBox(
          height: MediaQuery.of(context).size.height / 10.55,
          child: TextFormField(
            controller: controller.confirmPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obserText2,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Confirm Password";
              } else if (value.length < 7) {
                return "Password should be more than 6";
              } else if (value != controller.confirmPassword.text) {
                return "Password Should Match";
              }
              return null;
            },
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obserText2 = !obserText2;
                  });
                },
                child: Icon(
                  obserText2 == true ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              label: Text(
                "Confirm Password",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 46.88),
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
        )
      ],
    );
  }
}
