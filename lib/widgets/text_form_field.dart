import 'package:flutter/material.dart';

class ReckTextFormField extends StatefulWidget {
  final String labelText;

  ReckTextFormField({this.labelText});

  @override
  _ReckTextFormFieldState createState() => _ReckTextFormFieldState();
}

class _ReckTextFormFieldState extends State<ReckTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color(0xFF302e2e),
        filled: true,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent)),
        labelText: widget.labelText,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white, width: 2)),
      ),
    );
  }
}
