import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tami/utils/Storage.dart';


class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override 
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture>{
  Uint8List? currentProfilePicture;
  Storage storage = Storage();

  @override
  void initState(){
    super.initState();
    getProfileImage();
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        changeProfileImage();
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          image: currentProfilePicture != null 
            ? DecorationImage(
              fit: BoxFit.cover,
              image: MemoryImage(currentProfilePicture!)
            )
            : const DecorationImage(
              image: AssetImage('images/crissontLogo.png'),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }

  Future<void> changeProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if(image == null) return;

    await storage.upload('user_.jpg', image);
    final bytes = await image.readAsBytes();
    setState(() => currentProfilePicture = bytes);
  }

  Future<void> getProfileImage() async {
    final bytes = await storage.get('user_.jpg');
    if(bytes == null) return;
    setState (() => currentProfilePicture = bytes);
  }
}