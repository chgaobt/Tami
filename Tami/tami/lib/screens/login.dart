import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                child: Image.asset('images/loginScreen.png',fit: BoxFit.fill,),
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
                    color: Color.fromARGB(255,213,152,113)
                  ), 
                ),
              ),
              Positioned(
                top: 275,
                left: 45,
                child: Column(
                  children: [
                    usernameField(),
                    //const SizedBox(height: 15),
                    passwordField(),
                    const SizedBox(height: 40),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD59871),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Forgot your password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black45
                      ),
                    ),
                    const SizedBox(height: 190),
                    const Text(
                      "or Login With",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        //color: Color.fromARGB(255,213,152,113)
                        color: Colors.black54
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row( 
                      children: [
                        Container(
                          height: 45,
                          width: 177,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                  
                        Container(
                          height: 45,
                          width: 177,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ]
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Don't have an account? Sign up here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        //color: Color.fromARGB(255,213,152,113)
                        color: Colors.black54
                      ),
                    )
                  ],
                )
              )
            ],
          )
          
        ],
      ),
    );
  }

  Container passwordField() {
    return Container(
                  width: 350,
                  decoration: BoxDecoration(
                    //color: const Color.fromARGB(150, 213,152,113),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.lock_open_outlined, 
                          color: Colors.black
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 18,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.black45
                              ),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }

  Container usernameField() {
    return Container(
                    width: 350,
                    decoration: BoxDecoration(
                      //color: const Color.fromARGB(150, 213,152,113),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 25),
                          child: Icon(
                            Icons.person_outlined, 
                            color: Colors.black
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Username",
                                hintStyle: TextStyle(
                                  color: Colors.black45
                                ),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}