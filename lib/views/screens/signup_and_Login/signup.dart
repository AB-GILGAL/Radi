// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:radi_app/firebase/add_user.dart';
import 'package:radi_app/firebase/auth.dart';
import 'package:radi_app/firebase/auth_services.dart';
import 'package:radi_app/firebase/sign_up_controllers.dart';
import 'package:radi_app/utils/email_password_failure.dart';
import 'package:radi_app/views/screens/signup_and_Login/info_details1.dart';
import 'package:radi_app/widgets/signup/email.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/widgets/signup/lastname.dart';
import 'package:radi_app/widgets/signup/password.dart';
import 'package:radi_app/views/screens/signup_and_Login/login.dart';
import '../../../widgets/signup/field_text.dart';
import '../../../widgets/signup/firstname.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String selected = "";
  bool isLoading = false;
  Authentication authentication = Authentication();

  final TextEditingController _dateController = TextEditingController();
  
  String get code => "";
  @override
  void initState() {
    super.initState();
    _dateController.text = "";
  }

  final formKeySignUp = GlobalKey<FormState>();

  var value = "1";
  final controller = Get.put(SignUpController());
  AuthServices authServices = AuthServices();
  UserCreate userCreate = UserCreate();
  SignUpWithEmailAndPasswordFailure signUpFailure = const SignUpWithEmailAndPasswordFailure();

  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height / 42.2),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Image.asset(
                  "assets/images/3.png",
                  height: MediaQuery.of(context).size.height / 8.44,
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 28.13,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor),
                ),
                Center(
                  child: Text(
                    "Before you get access to all our content",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: MediaQuery.of(context).size.height / 56.26),
                  ),
                ),
                Center(
                  child: Text(
                    "let's create an account for you",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: MediaQuery.of(context).size.height / 56.26),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formKeySignUp,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 10.55,
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: const FirstName()),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 10.55,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: FieldText(
                                nameText: "Other Name",
                                textEditingController: controller.otherName,
                                formFieldValidator: (value) {
                                  if (value!.isEmpty) {
                                    return null;
                                  }
                                  if (!nameRegExp.hasMatch(value)) {
                                    return "Enter Valid Other Name";
                                  }
                                  return null;
                                },
                                keyboardT: TextInputType.name),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: const LastName(),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: double.infinity,
                        child: const EmailTextfield(),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015),
                      const SizedBox(
                          width: double.infinity, child: PasswordField()),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: isLoading
                            ? Center(
                                child:
                                    SpinKitCircle(color: AppColors.spinColor),
                              )
                            : SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 16.88,
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          AppColors.buttonColor,
                                        )),
                                    onPressed: () {
                                      if (formKeySignUp.currentState!
                                          .validate() && SignUpWithEmailAndPasswordFailure.code(code) == true) {
                                        
                                          //   .then((value) {
                                          // userCreate.createUser(
                                          //     firstname:
                                          //         controller.firstName.text,
                                          //     lastName:
                                          //         controller.lastName.text,
                                          //     email: controller.email.text);
                                              
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return const InfoDetails1();
                                            },
                                          )
                                          );
                                        }
                                        // );
                                      },
                                    // },
                                    child: const Text("Create Account")),
                              ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height /
                                      49.64)),
                          TextButton(
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
                                          MediaQuery.of(context).size.height /
                                              49.64)))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
