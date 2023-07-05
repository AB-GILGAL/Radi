import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../firebase/sign_up_controllers.dart';

class LastName extends StatelessWidget {
  const LastName({super.key});
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return TextFormField(
      validator: (value) => value!.isEmpty
          ? 'Enter Your Last Name'
          : (nameRegExp.hasMatch(value) ? null : 'Enter a Valid Last Name'),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller.lastName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        label: Text(
          "Last Name",
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
    );
  }
}
