import 'package:flutter/material.dart';

class HardDeleteSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Hard delete',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        'Switch on to erase the image from disk permanently.',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      value: false,
      onChanged: (bool value) {},
      secondary: const Icon(
        Icons.warning_rounded,
        color: Colors.red,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
    );
  }
}
