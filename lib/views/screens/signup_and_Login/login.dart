import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:radi_app/firebase/auth.dart';
import 'package:radi_app/firebase/auth_services.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/signup_and_Login/forgot_password.dart';
import 'package:radi_app/views/screens/signup_and_Login/signup.dart';
import 'package:radi_app/views/templates/home.dart';
import 'package:radi_app/views/templates/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../firebase/login_controllers.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formkey = GlobalKey<FormState>();
  bool obserText = true;
  bool isLoading = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  static final RegExp emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+");

  final controller = Get.put(LoginController());
  Authentication authentication = Authentication();
  AuthServices authServices = AuthServices();

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
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Image.asset(
                  "assets/images/3.png",
                  height: MediaQuery.of(context).size.height / 8.44,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 28.13,
                    color: const Color.fromARGB(255, 30, 0, 82),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10.55,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: controller.email,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your email";
                              } else if (!emailValid.hasMatch(value)) {
                                return "Please enter valid email";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // errorStyle: const TextStyle(fontSize: 0.01),
                              label: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.focusedErrorBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.errorBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.enabledBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.focusedBorder,
                                      width: 1.2),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10.55,
                          child: TextFormField(
                            controller: controller.confirmPassword,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: obserText,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your password";
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
                                  obserText == true
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.focusedErrorBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.errorBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.enabledBorederColor,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.focusedBorder,
                                      width: 1.2),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const ForgotPassword();
                                },
                              ));
                            },
                            child: Text("Forgot password?",
                                style: TextStyle(
                                    color: AppColors.textButtonColor)),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0),
                          child: isLoading
                              ? Center(
                                  child:
                                      SpinKitCircle(color: AppColors.spinColor),
                                )
                              : SizedBox(
                                  width: MediaQuery.of(context).size.width / 1,
                                  height: MediaQuery.of(context).size.height /
                                      16.88,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          84.4)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          AppColors.buttonColor,
                                        )),
                                    onPressed: () async {
                                      if (formkey.currentState!.validate()) {
                                        await authServices
                                            .login(
                                                email: controller.email.text,
                                                password: controller
                                                    .confirmPassword.text)
                                            .then((value) {
                                          if (authServices
                                                  .firebaseAuth.currentUser !=
                                              null) {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return const HomeView();
                                              },
                                            ));
                                          }
                                        });
                                        SharedPreferences sharedPreferences =
                                            await SharedPreferences
                                                .getInstance();
                                        sharedPreferences.setBool(
                                            SplashScreenState.keyLogin, true);
                                      }
                                    },
                                    child: Text("Login",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                46.88)),
                                  ),
                                ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            49.64)),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const SignUpView();
                                    },
                                  ));
                                },
                                child: Text("Sign up",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                49.64)))
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
