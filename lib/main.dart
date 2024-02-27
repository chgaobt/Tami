import 'package:flutter/material.dart';
import 'package:tami/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
    // return Directionality(
    //   textDirection: TextDirection.ltr, // or TextDirection.rtl
    //   child: MaterialApp(
    //     title: 'Retrieve Text Input',
    //     home: splashScreen(),
    //   ),
    // );
  }
}

// class _MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<_MyHomePage> {
//   TextEditingController _textEditingController = TextEditingController();

//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: TextField(
//           controller: _textEditingController,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 content: Text(_textEditingController.text),
//               );
//             },
//           );
//         },
//         tooltip: 'Show me the value!',
//         child: const Icon(Icons.text_fields),
//       ),
//     );
//   }
// }