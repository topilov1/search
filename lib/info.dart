import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  static const id = '/hame';
  String? info;
  Info({super.key, this.info});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(widget.info.toString()),
        ),
      ),
    );
  }
}
