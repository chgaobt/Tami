import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override 
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture>{
  Uint8List? currentProfilePicture;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        changeProfileImage();
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle
        ),
      ),
    );
  }

  Future<void> changeProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }
}