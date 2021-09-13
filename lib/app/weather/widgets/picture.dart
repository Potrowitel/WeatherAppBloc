import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  bool flag = true;

  Picture({flag});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.flag
          ? Image.asset('assets/images/graphic.png')
          : Image.asset('assets/images/graphic_night.png'),
    );
  }
}
