import 'package:flutter/material.dart';

class CopyOrMoveSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Copy or move image',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'At the moment images get moved to selected directory',
        style: TextStyle(
          color: Colors.grey[400],
        ),
      ),
      value: false,
      onChanged: (bool value) {},
    );
  }
}
