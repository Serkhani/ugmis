import 'package:flutter/material.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:dotted_border/dotted_border.dart';

class FileUploadContainer extends StatelessWidget {
  const FileUploadContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await FilePickerCross.importFromStorage()
            .then((value) => value.path.toString())
            .onError((error, stackTrace) => "NA");
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: DottedBorder(
          color: Colors.blueGrey,
          radius: const Radius.circular(10.0),
          padding: const EdgeInsets.all(8.0),
          borderType: BorderType.RRect,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/cloud.png')),
              Text("Add file", style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
      ),
    );
  }
}

