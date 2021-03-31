import 'package:flutter/material.dart';

class CopyOrMoveSwitch extends StatelessWidget {
  final bool moveImageToFolder;
  final Function onChange;
  final Key key;
  CopyOrMoveSwitch(this.key, {@required this.moveImageToFolder, @required this.onChange}) {}
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      key: key,
      title: Text(
        'Copy or move image',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        'At the moment images get ${ moveImageToFolder == true ? 'moved' : 'copied' } to selected directory',
        style: TextStyle(
          color: Colors.grey[400],
        ),
      ),
      value: moveImageToFolder,
      onChanged: onChange,
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
    );
  }
}
