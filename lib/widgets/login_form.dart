import 'package:flutter/material.dart';
import 'package:marvel_dc_app/screens/registration_screen.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();

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

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 10.0)]),
      child: Form(
        key: _loginFormKey,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 8, left: 16, right: 16),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: textFormFieldDecoration.copyWith(
                      labelText: "Email"),
                  validator: (value) {
                    if (!value.isEmpty) {
                      return null;
                    } else {
                      return "Please enter your Email";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: TextFormField(
                  obscureText: _isObscure,
                  style: TextStyle(color: Colors.white),
                  decoration: textFormFieldDecoration.copyWith(
                      labelText: "Password",
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off,color: Colors.grey,),
                          onPressed: () {setState(() {
                            _isObscure = !_isObscure;
                          });})),
                  validator: (value) {
                    if (!value.isEmpty) {
                      return null;
                    } else {
                      return "Password cannot be empty";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //TODO: IMPLEMENT (ROUTES) instead of MATERIAL_PAGE_ROUTS

                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return RegistrationScreen();
                        }));
                      },
                      child: Text("Register"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_loginFormKey.currentState.validate()) {
                            return;
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Login"),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
