import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tidy_my_gallery/widgets/copy-or-move-switch.dart';
import 'package:tidy_my_gallery/widgets/hard-delete-switch.dart';
import 'package:tidy_my_gallery/widgets/image-folder-picker.dart';
import 'package:tidy_my_gallery/widgets/sorting-section.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        color: Colors.grey[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageFolderPicker(
              title: 'Image Folder',
              subtitle: 'Select a folder to tidy up',
            ),
            SizedBox(
              height: 30,
            ),
            Text('Sorting Sections',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SortingSection(
              title: 'Love',
              icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
              ),
              Switch: CopyOrMoveSwitch(),
            ),
            SizedBox(
              height: 20,
            ),
            SortingSection(
              title: 'Like',
              icon: Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              Switch: CopyOrMoveSwitch(),
            ),
            SizedBox(
              height: 20,
            ),
            SortingSection(
              title: 'Soft Remove',
              icon: Icon(
                Icons.delete_forever,
                color: Colors.grey,
              ),
              Switch: HardDeleteSwitch()
            ),
            HardDeleteSwitch(),
          ],
        ),
      ),
    );
  }
}
