import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ImageFolderPicker extends StatelessWidget {
  final String subtitle;
  final Function onFolderSelected;
  ImageFolderPicker({@required this.subtitle, @required this.onFolderSelected}) {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Image folder',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(this.subtitle,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.folder,
                color: Colors.orange,
              ),
              onPressed: () async {
                String result = await FilePicker.platform.getDirectoryPath();
                print(result);
                if (result == null) {
                  onFolderSelected('');
                } else {
                  onFolderSelected(result);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
