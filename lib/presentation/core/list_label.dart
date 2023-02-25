import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListLabel extends StatelessWidget {
  final String title;
  final double? fontSize;

  const ListLabel(
      {super.key, required this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        textScaleFactor: 1.0,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? 16.0
        ),
      ),
    );
  }
}
