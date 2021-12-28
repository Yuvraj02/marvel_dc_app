import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _registrationFormKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //TODO : Add password authentication

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
    return Form(
      key: _registrationFormKey,
        child: Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: textFormFieldDecoration.copyWith(
                  labelText: "Full Name",
                  prefixIcon: Icon(
                    Icons.perm_identity_rounded,
                    color: Colors.white70,
                  )),
                validator: (value) {
                  if (value.isNotEmpty) {
                    return null;
                  } else {
                    return "Cannot be Empty";
                  }
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: textFormFieldDecoration.copyWith(
                labelText: "Enter Email Address",
                prefixIcon: Icon(Icons.email_outlined, color: Colors.white70),
              ),
                validator: (value) {
                  if (value.isNotEmpty) {
                    return null;
                  } else {
                    return "Cannot be Empty";
                  }
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: passwordController,
              style: TextStyle(color: Colors.white),
              decoration: textFormFieldDecoration.copyWith(
                  labelText: "Enter Password",
                  prefixIcon: Icon(
                    Icons.pending_outlined,
                    color: Colors.white70,
                  )),
                validator: (value) {
                  if (value.isNotEmpty) {
                    return null;
                  } else {
                    return "Cannot be Empty";
                  }
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: textFormFieldDecoration.copyWith(
                  labelText: "Confirm Password"),
              validator: (value) {
                if (value.isNotEmpty) {
                  return null;
                } else {
                  return "Cannot be Empty";
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () {
                  if (_registrationFormKey.currentState.validate()) {
                    return;
                  }
                },
                child: Text("Register")),
          )
        ],
      ),
    ));
  }
}
