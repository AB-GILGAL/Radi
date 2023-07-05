import 'package:flutter/material.dart';
import 'package:radi_app/views/screens/edit_profile.dart';
import 'package:radi_app/widgets/custom_appbar.dart';
import 'package:radi_app/widgets/profile_field.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Profile"),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CircleAvatar(
              radius: MediaQuery.of(context).size.height / 16.88,
            ),
            Text("James Doe",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 42.22)),
            const Text("jamesdoe@gmail.com"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18.75,
              width: MediaQuery.of(context).size.height / 4.22,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const EditProfile();
                      },
                    ));
                  },
                  icon: Icon(
                    Icons.edit_note_rounded,
                    size: MediaQuery.of(context).size.height / 24.11,
                  ),
                  label: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 46.88),
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 42.2,
                  vertical: MediaQuery.of(context).size.height / 56.26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Firstname"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Lastname"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Email"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Date of Birth"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Phone Number"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Address"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("Password"),
                  profileFieldText(
                      heightSize: MediaQuery.of(context).size.height / 16.88)
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
