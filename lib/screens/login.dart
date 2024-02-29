import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("images/tami_loginScreen.png",fit: BoxFit.fill),
            )
          ],
        )],
      ),
    );
  }
}