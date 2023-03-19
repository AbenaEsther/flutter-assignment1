import 'package:flutter/material.dart';

class My_functions {
  //My Headers
  Text header(String txt) {
    return Text(
      txt,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  //Text Field
  Container Textbox(String Name, String hintText) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(Name),
              )),
          TextFormField(
            decoration: InputDecoration(
              hintText: (hintText),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton signIn(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(150, 15, 150, 15),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
    );
  }

  ElevatedButton googleIcon(String text) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset("images/google.png", height: 28, width: 28),
          Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  ElevatedButton facebookIcon(String text) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)))),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.facebook_outlined),
            Text("facebook"),
          ],
        ));
  }

  Row Arrow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
      ],
    );
  }

  Align heading(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Align subtitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
