import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthServices {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> login({required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        Get.snackbar("About Login", "Login Message",
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              "Login failed",
              style: TextStyle(color: Colors.white),
            ),
            messageText: Text(
              e.code.toString(),
              style: const TextStyle(color: Colors.white),
            ));
      } else if (e.code == 'wrong-password') {
        Get.snackbar("About Login", "Login Message",
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              "Login failed",
              style: TextStyle(color: Colors.white),
            ),
            messageText: Text(
              e.code.toString(),
              style: const TextStyle(color: Colors.white),
            ));
      }
    }
  }

  Future<void> signUp({required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use" || e.code == 'weak-password') {
        Get.snackbar("About Sign Up", "Sign Up Message",
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              "Account Creation Failed",
              style: TextStyle(color: Colors.white),
            ),
            messageText: Text(
              e.code.toString(),
              style: const TextStyle(color: Colors.white),
            ));
      } else {}
    }
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
