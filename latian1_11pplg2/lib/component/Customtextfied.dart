import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
final TextEditingController controller;
final String label;
final Color labelColor;
final bool pass;

const CustomTextField({super.key, required this.controller, required this.label
,required this.labelColor, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        obscureText: pass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: labelColor)
        )
      )
    );
  }
}
