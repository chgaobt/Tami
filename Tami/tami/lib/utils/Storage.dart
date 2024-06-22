import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class Storage {
  Storage() : ref = FirebaseStorage.instance.ref();
  final Reference ref; 

  Future<void> upload (String fileName, XFile file) async {
    try{
      final imageRef = ref.child(fileName);
      final bytes = await file.readAsBytes();
      await imageRef.putData(bytes);
    }
    catch (e) {
      null;
    }
  }

  Future<Uint8List?> get (String fileName) async {
    try {
      final imageRef = ref.child(fileName);
      return imageRef.getData();
    }
    catch (e) {
      print("No image");
    }
  } 
}