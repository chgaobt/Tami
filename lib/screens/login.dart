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
            ),
            Positioned(
              top: 100,
              left: 170,
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 35, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white),
              )
            ),
            Positioned(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person_outlined),
                      ],
                    ),
                  )
                ],
              ))
          ],
        )],
      ),
    );
  }
}