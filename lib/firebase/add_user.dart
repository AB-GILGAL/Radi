// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserCreate {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => firebaseAuth.currentUser;

  final db = FirebaseFirestore.instance;
  createUser(
      {required String firstname,
      required String lastName,
      required String email}) async {
    await db
        .collection("Users")
        .doc(currentUser!.uid)
        .set({"First Name": firstname, "Last Name": lastName, "email": email});
  }

  final CollectionReference users =
      FirebaseFirestore.instance.collection("Users");
  Future<void> upDate(
      {String? title,
      String? gender,
      String? maritalStatus,
      String? occupation,
      String? address,
      int? phone,
      String? birthDate}) async {
    await users.doc(currentUser!.uid).set({
      "Title": title,
      "Gender": gender,
      "Marital Status": maritalStatus,
      "Occupation": occupation,
      "Phone": phone,
      "Date of Bith": birthDate
    }, SetOptions(merge: true));
  }
}
