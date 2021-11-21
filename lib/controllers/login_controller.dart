import 'package:bisnis_lab/routes/name_routes.dart';
import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed(RouteName.home);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        e.code.capitalizeFirst!,
        e.message!.capitalizeFirst!,
        margin: const EdgeInsets.all(Edge.padding),
      );
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(RouteName.login);
  }
}
