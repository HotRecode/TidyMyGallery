import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[400],
      child: Center(
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
            child: Text(
              'Y³',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 80,
              ),
            ),
          ),
          SpinKitCubeGrid(
            color: Colors.orange[900],
            size: 120.0,
          ),
        ]),
      ),
    );
  }
}
