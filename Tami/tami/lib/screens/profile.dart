import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tami/utils/ProfilePicture.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

void logoutUser() {
  FirebaseAuth.instance.signOut();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    //final ImageProvider? image;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 181, 153),
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        toolbarHeight: 40,
        //leading: used to add on left side 
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                logoutUser();
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              )
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:Container(
                  color: Colors.white,
                  height: 633,
                  width: MediaQuery.of(context).size.width,
                )
              ),),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: ProfilePicture()
          ),
        ],
      ),
    );
  }
}