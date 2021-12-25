import 'package:flutter/material.dart';
import 'package:marvel_dc_app/widgets/text_form_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0),boxShadow: [BoxShadow(color: Colors.black54,blurRadius: 10.0)]),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 8, left: 16, right: 16),
              child: ReckTextFormField(labelText: "Email/Phone.no",),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: ReckTextFormField(labelText: "Password",)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {

                    //TODO: IMPLEMENT (ROUTES) instead of MATERIALPAGEROUTS

                    // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    //   return RegistrationScreen();
                    // }));


                  }, child: Text("Register"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo)),),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(onPressed: () {}, child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Login"),
                  ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all( Colors.teal)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
