import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart';

class StegPage extends StatefulWidget {
  @override
  _StegPageState createState() => _StegPageState();
}

class _StegPageState extends State<StegPage> {
  TextEditingController textController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Steganography App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () async {
                var status = await Permission.storage.request();
                if (status.isGranted) {
                  _pickImage(ImageSource.gallery);
                } else {
                  print('Permission denied');
                }
              },
              child: Text('Upload Image'),
            ),
            _image != null ? Image.file(_image!) : Container(),
            TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Text to Encode/Decode'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _image != null
                    ? encodeImage(context)
                    : _showErrorDialog(context, "Please upload an image.");
              },
              child: Text('Encode Image'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> encodeImage(BuildContext context) async {
    String textToEncode = textController.text;
    String password = passwordController.text;

    // Read the image file
    List<int> imageBytes = await _image!.readAsBytes();
    img.Image image = img.decodeImage(Uint8List.fromList(imageBytes))!;

    // Validate if the image can hold the text
    int maxTextLength = (image.width * image.height * 3) ~/ 8;
    if (textToEncode.length > maxTextLength) {
      _showErrorDialog(context, 'Error: Text is too long for the given image.');
      return;
    }

    // Convert text to bytes
    Uint8List textBytes = Uint8List.fromList(textToEncode.codeUnits);

    // Encode each byte of the text into image pixels
    int textIndex = 0;
    for (int y = 0; y < image.height; y++) {
      for (int x = 0; x < image.width; x++) {
        int pixel = image.getPixel(x, y);

        // Encode text into the least significant bit of each color channel
        for (int c = 0; c < 3; c++) {
          int bit = (textBytes[textIndex] >> c) & 1;
          pixel = (pixel & ~1) | (bit << c);
          textIndex++;

          if (textIndex == textBytes.length) {
            // All text encoded, save the image and return
            String outputImagePath =
                await _saveEncodedImage(context, imageBytes);
            _showSuccessDialog(context,
                'Image encoded successfully!\nSaved to: $outputImagePath');
            return;
          }
        }

        image.setPixel(x, y, pixel);
      }
    }
  }

  // Future<String> _saveEncodedImage(List<int> encodedImageBytes) async {
  //   try {
  //     Directory appDocumentsDirectory =
  //         await getApplicationDocumentsDirectory();
  //     String appDocumentsPath = appDocumentsDirectory.path;

  //     // Ensure the directory exists, if not, create it
  //     Directory outputDirectory = Directory('$appDocumentsPath/encoded_images');
  //     if (!await outputDirectory.exists()) {
  //       print('Creating directory...');
  //       await outputDirectory.create(recursive: true);
  //       print('Directory created successfully');
  //     }

  //     String outputImagePath =
  //         '$appDocumentsPath/encoded_images/encoded_image.png';
  //     await File(outputImagePath).writeAsBytes(encodedImageBytes);

  //     return outputImagePath;
  //   } catch (e) {
  //     print('Error saving encoded image: $e');
  //     _showErrorDialog('Error saving encoded image.');
  //     return '';
  //   }
  // }

  Future<String> _saveEncodedImage(
      BuildContext context, List<int> encodedImageBytes) async {
    try {
      // Custom directory path
      String customDirectoryPath = '/latent/images';

      // Get the app documents directory
      Directory appDocumentsDirectory =
          await getApplicationDocumentsDirectory();
      String appDocumentsPath = appDocumentsDirectory.path;

      // Construct the absolute path
      String absolutePath = join(appDocumentsPath, customDirectoryPath);

      // Ensure the custom directory exists, if not, create it
      Directory customDirectory = Directory(absolutePath);
      if (!await customDirectory.exists()) {
        print('Creating custom directory...');
        await customDirectory.create(recursive: true);
        print('Custom directory created successfully');
      }

      // Save the encoded image within the custom directory
      String outputImagePath = '$absolutePath/encoded_image.png';
      await File(outputImagePath).writeAsBytes(encodedImageBytes);

      return outputImagePath;
    } catch (e) {
      print('Error saving encoded image: $e');
      _showErrorDialog(context, 'Error saving encoded image.');
      return '';
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
