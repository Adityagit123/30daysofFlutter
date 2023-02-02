// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/sellpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then(
        (user) {
          setState(() {
            changeButton = true;
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SellPage()));
          // setState(
          //   () {
          //     changeButton = false;
          //   },
          // );
        },
      ).catchError(
        (e) {
          print(e);
        },
      );

      // await Future.delayed(Duration(seconds: 1));

      // ignore: use_build_context_synchronously
      // await Navigator.popAndPushNamed(context, MyRoutes.homeRoute);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/login_image.jpg",
                height: 260,
                width: 380,
              ),
              SizedBox(
                height: 20.0,
                // child: Text("aditya")
              ),
              Text("Welcome! ",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 58, 136, 60),
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please Login to Continue",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 127, 56, 221),
                                  width: 2)),
                          hintText: " Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 127, 56, 221),
                                  width: 2)),
                          hintText: " Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be at least 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email.text, password: password.text)
                                .then(
                              (user) {
                                setState(() {
                                  changeButton = true;
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SellPage()));
                                // setState(
                                //   () {
                                //     changeButton = false;
                                //   },
                                // );
                              },
                            ).catchError(
                              (e) {
                                print(e);
                              },
                            );
                          }
                        },
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple,
                              shape: changeButton
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              // borderRadius:
                              //     BorderRadius.circular(changeButton ? 20 : 8)
                            ),
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text("Not Registered Yet? "),
                          SizedBox(
                            width: 13,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationPage()),
                                );
                              },
                              child: Text(
                                "Register Now!",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                width: 140,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
