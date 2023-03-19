import 'package:first_page/functions.dart';
import 'package:flutter/material.dart';

class Forgotten_PasswordView extends StatelessWidget {
  Forgotten_PasswordView({Key? key}) : super(key: key);
  var see = My_functions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: see.header("Forgotten Password")),
            ),
            see.subtitle(
                "Select which contact details should we use send your password"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Form(
                child: Column(
              children: [
                see.Textbox("Name", "eokkk@gmail.com"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                see.Textbox("PhoneNumber", "0552472003"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                see.signIn("Continue")
              ],
            ))
          ],
        ),
      ),
    );
  }
}
