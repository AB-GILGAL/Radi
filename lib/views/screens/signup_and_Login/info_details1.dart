import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/signup_and_Login/info_details2.dart';
import 'package:radi_app/widgets/signup/titledropdown.dart';
import 'package:radi_app/widgets/signup/field_text.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:intl/intl.dart';

import '../../../firebase/add_User.dart';
import '../../../firebase/auth.dart';
import '../../../firebase/auth_services.dart';
import '../../../firebase/sign_up_controllers.dart';

class InfoDetails1 extends StatefulWidget {
  const InfoDetails1({super.key});

  @override
  State<InfoDetails1> createState() => _InfoDetails1State();
}

class _InfoDetails1State extends State<InfoDetails1> {
  TextEditingController dobController = TextEditingController();
  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1960),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        dobController.text = DateFormat.yMd().format(pickedDate);
      });
    });
  }

  String? selectedTitle;

  String? selectedGender;
  String? maritalStatus;
  bool obsertext = true;
  final formKeyInfo = GlobalKey<FormState>();
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  static final RegExp phoneRegEXP = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

  final TextEditingController occupationController = TextEditingController();
  final TextEditingController residentialController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  Authentication authentication = Authentication();
  final controller = Get.put(SignUpController());
  AuthServices authServices = AuthServices();
  UserCreate userCreate = UserCreate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 56.2),
        child: ListView(
          children: [
            Form(
              key: formKeyInfo,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 84.4),
                        child: Text(
                          "Title:  ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: MediaQuery.of(context).size.height / 6.49,
                        child: dropDownTitle(onChanged: (value) {
                          setState(() {
                            selectedTitle = value;
                          });
                        }),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70.33),
                        child: Text("Gender:",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height /
                                    46.88)),
                      ),
                      Expanded(
                        child: FormBuilderRadioGroup(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          name: "Gender",
                          options: ["Male", "Female"]
                              .map((e) => FormBuilderFieldOption(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              46.88),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return "Select Gender";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70.33),
                        child: Text(
                          "Marital Status:",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      Expanded(
                        child: FormBuilderRadioGroup(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          name: "Marital Status",
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return "Select Marital Status";
                            }
                            return null;
                          },
                          options: ["Single", "Married"]
                              .map((e) => FormBuilderFieldOption(
                                    value: e,
                                    child: Text(e,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                46.88)),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Select Date of Birth";
                          }
                          return null;
                        },
                        controller: dobController,
                        readOnly: true,
                        onTap: _presentDatePicker,
                        decoration: InputDecoration(
                            labelText: "Date of Birth",
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
                                    color: AppColors.focusedBorder, width: 1.2),
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon:
                                const Icon(Icons.calendar_month_rounded))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 10.55,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: TextFormField(
                            validator: (value) => value!.isEmpty
                                ? 'Enter Your Occupation'
                                : (nameRegExp.hasMatch(value)
                                    ? null
                                    : 'Enter a Valid Name'),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: controller.occupation,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              label: Text(
                                "Occupation",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromARGB(255, 30, 0, 82),
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                            ),
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 10.55,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: TextFormField(
                            validator: (value) => value!.isEmpty
                                ? 'Enter Your Residential Address'
                                : (nameRegExp.hasMatch(value)
                                    ? null
                                    : 'Enter a Valid Address'),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: controller.residentialAddress,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              label: Text(
                                "Residential Address",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromARGB(255, 30, 0, 82),
                                      width:
                                          MediaQuery.of(context).size.height /
                                              562.6),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height /
                                          84.4)),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 10.55,
                      width: double.infinity,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter phone number";
                          } else if (value.length < 10) {
                            return "Phone number not complete";
                          }

                          if (!phoneRegEXP.hasMatch(value)) {
                            return 'Enter Valid Phone Number';
                          } else {
                            return null;
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: controller.phoneNo,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          label: Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 46.88),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: MediaQuery.of(context).size.height /
                                      562.6),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height / 84.4)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: MediaQuery.of(context).size.height /
                                      562.6),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height / 84.4)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: MediaQuery.of(context).size.height /
                                      562.6),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height / 84.4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 30, 0, 82),
                                  width: MediaQuery.of(context).size.height /
                                      562.6),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height / 84.4)),
                        ),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 42.2),
                    child: SizedBox(
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
                            if (formKeyInfo.currentState!.validate()) {
                              userCreate
                                  .upDate(
                                      title: selectedTitle,
                                      gender: selectedGender,
                                      maritalStatus: maritalStatus,
                                      occupation: controller.occupation.text,
                                      address:
                                          controller.residentialAddress.text,
                                      phone: int.parse(controller.phoneNo.text))
                                  .then((value) {
                                return Navigator.push(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return const InfoDetails2();
                                  },
                                ));
                              });
                            }
                          },
                          child: const Text("Continue")),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
