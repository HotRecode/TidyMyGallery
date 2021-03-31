import 'package:flutter/material.dart';

class HardDeleteSwitch extends StatelessWidget {
  final bool hardDelete;
  final Function onChange;
  final Key key;
  HardDeleteSwitch(this.key, {@required this.hardDelete, @required this.onChange}) {}
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      key: key,
      title: Text(
        'Hard delete',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        this.hardDelete == true ?
        'Attention! Images will be permanently deleted now' :
        'Switch on to erase the image from disk permanently.',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      value: hardDelete,
      onChanged: onChange,
      secondary: const Icon(
        Icons.warning_rounded,
        color: Colors.red,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
    );
  }
}
