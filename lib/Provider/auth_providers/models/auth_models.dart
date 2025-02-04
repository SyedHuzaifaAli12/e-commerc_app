// ignore_for_file: unused_field

import 'package:cloud_firestore/cloud_firestore.dart';

class AuthM {
  final String uid;
  final String phoneNumber;
  final String email;
  final String password;
  final String profileImageUrl;

  AuthM({
    required this.uid,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.profileImageUrl,
  });

  Map<String, dynamic> tojson() => {
        'uid': uid,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password,
        'profileImageUrl': profileImageUrl,
      };

  static AuthM fromJson(Map<String, dynamic> json) => AuthM(
        uid: json['uid'] ?? '',
        phoneNumber: json['phoneNumber'] ?? ' ',
        email: json['email'] ?? '',
        password: json['password'] ?? '',
        profileImageUrl: json['profileImageUrl'] ?? '',
      );
  static fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;
    return AuthM(
        uid: snapShot['uid'],
        phoneNumber: snapShot['phoneNumber'],
        email: snapShot['email'],
        password: snapShot['password'],
        profileImageUrl: snapShot['profileImageUrl']);
  }
}
