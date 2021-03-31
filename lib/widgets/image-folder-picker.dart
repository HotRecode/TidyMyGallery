import 'package:flutter/material.dart';

class ImageFolderPicker extends StatelessWidget {
  final String title;
  final String subtitle;
  ImageFolderPicker({@required this.title, @required this.subtitle}) {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.title,
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
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
