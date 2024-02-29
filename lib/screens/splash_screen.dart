import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tami/screens/home_screen.dart';
import 'package:tami/screens/login.dart';

class splashScreen extends StatefulWidget{
  const splashScreen({super.key}); 

  @override
  State<splashScreen> createState() =>_splashScreenState(); 
}

class _splashScreenState extends State<splashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const login(),
        ),
      );
    });

  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
      overlays: SystemUiOverlay.values
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 121, 147, 198), Color.fromARGB(255,157,157,212)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.bakery_dining_outlined,
              //Icons.breakfast_dining_outlined,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Tami',
              style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}