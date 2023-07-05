import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authentication {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  final FirebaseFirestore userCreate = FirebaseFirestore.instance;
  User? get currentUser => firebaseAuth.currentUser;

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<void> addUser(
      {required String firstName,
      required String lastName,
      required String email}) {
    return userCreate.collection("Users").doc(currentUser!.uid).set({
      "First Name": firstName,
      "Last Name": lastName,
      "email": email,
    });
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
