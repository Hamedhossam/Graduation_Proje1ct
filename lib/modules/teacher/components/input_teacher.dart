import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';

class InputTeacher extends StatefulWidget {
  InputTeacher({super.key});

  @override
  State<InputTeacher> createState() => _InputTeacherState();
}

class _InputTeacherState extends State<InputTeacher> {
  FilePickerResult? result;

  String? _fileName;

  PlatformFile? pickedfile;

  bool isLoading = false;

  File? fileToDisplay;

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());
        print(' file name $_fileName');
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          minLines: 1,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: 'Enter A Massage',
          ),
        ),
        const SizedBox(height: defaultPadding),
        isLoading
            ? CircularProgressIndicator()
            : ElevatedButton.icon(
                onPressed: () {
                  pickFile();
                },
                icon: const Icon(Icons.upload, color: kPrimarywhiteColor),
                label: const Text('Upload file'),
              ),
        if (pickedfile != null)
          SizedBox(height: 10),
        if (pickedfile != null)
          SizedBox(height: 300, child: Image.file(fileToDisplay!)),
      ],
    );
  }
}
