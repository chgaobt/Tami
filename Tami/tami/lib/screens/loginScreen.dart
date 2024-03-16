// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/loginScreen.png',
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Tami",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 213, 152, 113)),
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  //color: const Color.fromARGB(150, 213,152,113),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                    children: [
                      Icon(
                        Icons.person_outlined,
                        color: Colors.black,
                      ),
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ],
                ),

                
              ),
        
                      const SizedBox(height: 40),
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD59871),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: Center(
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )),
                      const SizedBox(height: 15),
                      const Text(
                        'Forgot your password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                      const SizedBox(height: 190),
                      const Text(
                        "or Login with",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            //color: Color.fromARGB(255,213,152,113)
                            color: Colors.black54),
                      ),
                      Row(children: [
                        Container(
                          height: 45,
                          width: 177,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 45,
                          width: 177,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ]),
                      const SizedBox(height: 20),
                      const Text(
                        "Don't have an account? Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            //color: Color.fromARGB(255,213,152,113)
                            color: Colors.black54),
                      ),
                    ],
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
