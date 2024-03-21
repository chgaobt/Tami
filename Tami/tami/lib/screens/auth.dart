import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tami/screens/homeScreen.dart';
import 'package:tami/screens/login.dart';

class Auth extends StatelessWidget {
  const Auth({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return HomeScreen();
          }
          else{
            return login();
          }
        }
      ),
    );
  }
}