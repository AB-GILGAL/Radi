import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final firstName = TextEditingController();
  final otherName = TextEditingController();
  final lastName = TextEditingController();
  final dob = TextEditingController();
  final occupation = TextEditingController();
  final residentialAddress = TextEditingController();
  final phoneNo = TextEditingController();
  final idNum = TextEditingController();
  final businesSchool = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
}
