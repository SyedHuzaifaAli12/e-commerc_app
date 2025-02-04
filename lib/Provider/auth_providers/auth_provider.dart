import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/Provider/auth_providers/models/auth_models.dart';
import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/theme/colors.dart';
import 'package:e_commerce/widget/error_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentuser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChange => _firebaseAuth.authStateChanges();
  Future<void> CreateUserWithEmailPassword({
    context,
    required String countryName,
    required String email,
    required String password,
    required String profileImageUrl,
  }) async {
    try {
      UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      AuthM auth = AuthM(
        uid: cred.user!.uid,
        phoneNumber: countryName,
        email: email,
        password: password,
        profileImageUrl: profileImageUrl,
      );

      FirebaseFirestore.instance
          .collection('users')
          .doc(cred.user!.uid)
          .set(auth.tojson());
      CircularProgressIndicator();
      ErrorMessage(context, "successfull", themebuttoncolor);
      Go.named(context, RouteName.navabrScreen);
    } on FirebaseAuthException catch (e) {
      ErrorMessage(context, e.message.toString(), themeredcolor);
    } catch (e) {
      ErrorMessage(context, e.toString(), themeredcolor);
    }
  }

  Future<void> SignInWithEmailPassword({
    context,
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // Go.pop(context);
      Go.named(context, RouteName.navabrScreen);
    } catch (e) {
      // Go.pop(context);
      ErrorMessage(context, e.toString(), themeredcolor);
    }
  }
}
