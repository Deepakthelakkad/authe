
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({super.key});

  @override
  State<GoogleLogin> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    Future<void> _signInWithGoogle() async {
      try {
        final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
        if (userCredential.user != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          String userId = userCredential.user!.uid;
          prefs.setString('userId', userId);

          String name = userCredential.user!.displayName ?? "";
          String email = userCredential.user!.email ?? "";
          String imageUrl = userCredential.user!.photoURL ?? "";

          await FirebaseFirestore.instance.collection('Googlelogin').doc(userId).set({
            'name': name,
            'email': email,
            'imageUrl': imageUrl,
            'userId': userId,
            'phonenumber': null,
            'pincode': null,
            'address': null,
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
      } catch (error) {
        print("Google sign-in error: $error");
      }}
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              _signInWithGoogle();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/google.png"))),
                ),
              ],
            ),
          ),
          Text(
            "Click here to login",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
