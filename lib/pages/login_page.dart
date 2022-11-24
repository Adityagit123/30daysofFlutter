// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
          // child: Text("aditya")
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: " Enter Username",
                labelText: "Username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: " Enter Password",
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(),
              onPressed: () {
                //Navigator.popAndPushNamed(context, "/home");
                print("Hi Codepur");
              },
            )
          ]),
        )
      ],
    ));
  }
}
