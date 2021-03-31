import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tidy_my_gallery/models/settings.dart';
import 'package:tidy_my_gallery/services/settings-service.dart';
import 'package:tidy_my_gallery/widgets/copy-or-move-switch.dart';
import 'package:tidy_my_gallery/widgets/hard-delete-switch.dart';
import 'package:tidy_my_gallery/widgets/image-folder-picker.dart';
import 'package:tidy_my_gallery/widgets/loading-indicator.dart';
import 'package:tidy_my_gallery/widgets/sorting-section.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<SettingsService> _data;
  @override
  void initState() {
    super.initState();
    _data = SettingsService.create();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SettingsService>(
        future: _data,
        builder: (BuildContext context, AsyncSnapshot<SettingsService> snapshot) {
            if (!snapshot.hasData)
              return loadingIndicator();
            else
              return settingsScaffold(snapshot.data, setState);
        }
    );
  }
}


Widget settingsScaffold(SettingsService service, Function setState) {
  Settings _settings = service.getSettings();
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
            subtitle: _settings.tinyUpFolder.isEmpty == true ? 'Select a folder to tidy up' : _settings.tinyUpFolder,
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
            selectedFolder: _settings.loveFolder,
            Switch: CopyOrMoveSwitch(Key('loveImagesSwitch'),
              moveImageToFolder: _settings.loveImagesMoveToFolder,
              onChange: (bool value) {
                var updatedSetting = Settings.update(
                  _settings,
                  loveImagesMoveToFolder: value,
                );
                service.updateSettings(updatedSetting);
                setState(() {
                  _settings = updatedSetting;
                });
              },
            ),
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
            selectedFolder: _settings.likeFolder,
            Switch: CopyOrMoveSwitch(Key('likeImagesSwitch'),
              moveImageToFolder: _settings.likeImagesMoveToFolder,
              onChange: (bool value) {
                var updatedSetting = Settings.update(
                  _settings,
                  likeImagesMoveToFolder: value,
                );
                service.updateSettings(updatedSetting);
                setState(() {
                  _settings = updatedSetting;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SortingSection(
              title: 'Remove',
              icon: Icon(
                Icons.delete_forever,
                color: Colors.grey,
              ),
              selectedFolder: _settings.deleteFolder,
              Switch: HardDeleteSwitch(Key('hardDelete'),
                hardDelete: _settings.hardDelete,
                onChange: (bool value) {
                  var updatedSetting = Settings.update(
                    _settings,
                    hardDelete: value,
                  );
                  service.updateSettings(updatedSetting);
                  setState(() {
                    _settings = updatedSetting;
                  });
                },
              )
          ),
        ],
      ),
    ),
  );
}