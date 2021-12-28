//TODO -> Complete Registration Form and Connect the software to Database

import 'package:flutter/material.dart';
import 'package:marvel_dc_app/widgets/registration_form.dart';

class RegistrationScreen extends StatelessWidget {

  final textFormFieldDecoration = InputDecoration(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Color(0xFF302e2e),
    filled: true,
    labelStyle: TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white, width: 2)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      backgroundColor: Color(0xFFcf381f),
      body:SingleChildScrollView(reverse:true,child: RegistrationForm()),
    );
  }
}
