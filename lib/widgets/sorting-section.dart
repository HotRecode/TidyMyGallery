import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tidy_my_gallery/widgets/image-folder-picker.dart';

class SortingSection extends StatelessWidget {
  final String title;
  final Widget Switch;
  final Icon icon;

  SortingSection({
    @required this.title,
    this.icon,
    @required this.Switch,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(
              width: 10,
            ),
            if (icon != null)
              icon,
          ],
        ),
        ImageFolderPicker(
            title: 'Image Folder',
            subtitle: 'Select folder where $title images should go'
        ),
        Switch,
      ],
    );
  }
}
