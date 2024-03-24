import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/loginScreen.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 200,
                left: 170,
                child: Text(
                  "Tami",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 213, 152, 113)),
                ),
              ),
              Positioned(
                  top: 275,
                  left: 45,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            //color: const Color.fromARGB(150, 213,152,113),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.person_outlined,
                                  color: Colors.black),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 18,
                                ),
                                child: TextField(
                                  controller: _usernameController,
                                  decoration: InputDecoration(
                                      hintText: "Enter Email",
                                      hintStyle:
                                          TextStyle(color: Colors.black45),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //const SizedBox(height: 15),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          //color: const Color.fromARGB(150, 213,152,113),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.lock_open_outlined, color: Colors.black),
                            ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                            ),
                            child: TextField(
                              obscureText: true,
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black45),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                    const SizedBox(height: 40),
                    GestureDetector(
                      //implement sign up button
                    ),
                      const SizedBox(height: 15),
                      const Text(
                        "or Sign Up with",
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
                    ],
                  )))
            ],
          ),
        ],
      ),
    );
  }
}