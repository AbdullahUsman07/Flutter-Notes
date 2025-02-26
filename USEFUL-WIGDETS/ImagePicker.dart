import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// --------------For Single Image----------------------

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImagePicker'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: (file == null)
                  ? const Center(child: Text('No Image'))
                  : Image.file(File(file!.path)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                },
                child: const Text('Choose Image')),
          ],
        ),
      ),
    );
  }
}


// --------------------------------For Multiple Images----------------------

class MultiImagePicker extends StatefulWidget {
  const MultiImagePicker({super.key});

  @override
  State<MultiImagePicker> createState() => _MultiImagePickerState();
}

class _MultiImagePickerState extends State<MultiImagePicker> {

  ImagePicker _picker = ImagePicker();

  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text('MultiImagePicker'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(


        // To do build gridview to display all the images

        
        children: [
          ElevatedButton(onPressed: ()async{
            final List<XFile>? images = await _picker.pickMultiImage();
            setState((){
              files = images;
            });
          }, child: const Text('Pick Multipile images'))
      ],)
    );
  }
}