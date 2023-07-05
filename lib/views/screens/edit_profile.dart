import 'package:flutter/material.dart';
import 'package:radi_app/views/dashboard/profile.dart';
import 'package:radi_app/widgets/custom_appbar.dart';
import 'package:radi_app/widgets/edit_profile_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Edit Profile"),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const CircleAvatar(
              radius: 50,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Firstname"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Lastname"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Email"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Date of Birth"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Phone Number"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Address"),
                  editFieldText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Password"),
                  editFieldText(),
                ],
              ),
            ),
            SizedBox(
              height: 45,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ProfileView();
                      },
                    ));
                  },
                  child: const Text(
                    "Save Profile",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ],
        ),
      ]),
    );
  }
}
