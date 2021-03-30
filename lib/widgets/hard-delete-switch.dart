import 'package:flutter/material.dart';

class HardDeleteSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Hard delete',
        style: TextStyle(
          color: Colors.white,
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
    );
  }
}
