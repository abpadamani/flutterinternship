import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Mycamera extends StatefulWidget {
  const Mycamera({Key? key}) : super(key: key);

  @override
  State<Mycamera> createState() => _MycameraState();
}

class _MycameraState extends State<Mycamera> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) {
        return;
      }

      final imageyemparory = File(image.path);
      setState(() => this.image = imageyemparory);
    } on PlatformException catch (e) {
      print('Failed to  pick image : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera feature"),
      ),
      body: Padding(
        padding: MediaQuery.of(context).padding * 0.5,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(),
              image != null
                  ? ClipOval(
                      child: Image.file(
                        image!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    )
                  : FlutterLogo(
                      size: 150,
                    ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    pickImage(ImageSource.gallery);
                  },
                  child: Text("Image from gallery")),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    pickImage(ImageSource.camera);
                  },
                  child: Text("Image click")),
            ],
          ),
        ),
      ),
    );
  }
}
