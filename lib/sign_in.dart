import 'package:flutter/material.dart';
import 'package:first_page/functions.dart';

class Sign_inView extends StatelessWidget {
  Sign_inView({Key? key}) : super(key: key);

  var f1 = new My_functions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Welcome Back",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login to your account to continue shopping",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: f1.Textbox("Name", "Esther Ofosu"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: f1.Textbox("Email", "eo@mail.com"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check_box_outline_blank)),
                        Text("Remember")
                      ]),
                      Text("Forgotten Password")
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  f1.signIn("Sign In"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        f1.googleIcon("Google"),
                        f1.facebookIcon("facebook"),
                      ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Don't have an account?"),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  )
                ],
              ))
            ])),
      ],
    ));
  }
}
