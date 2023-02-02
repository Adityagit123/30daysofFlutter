import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sellpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool changeButton = false;

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController address = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // await Future.delayed(Duration(seconds: 1));

  // ignore: use_build_context_synchronously
  // await Navigator.popAndPushNamed(context, MyRoutes.homeRoute);

  void storeUser() {
    FirebaseFirestore.instance.collection('user').doc().set({
      'name': name.text,
      'email': email.text,
      "password": password.text,
      'address': address,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      color: Color.fromARGB(255, 219, 254, 220),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20.0,
                              // child: Text("aditya")
                            ),
                            Card(
                              child: Image.asset(
                                "assets/images/regn.png",
                                height: 130,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                              // child: Text("aditya")
                            ),
                            Text("Register ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 60, 146, 63),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600)),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 32.0),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: name,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 127, 56, 221),
                                                width: 2)),
                                        hintText: " Enter Your Name",
                                        labelText: "Name",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFormField(
                                      controller: email,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.mail),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 127, 56, 221),
                                                width: 2)),
                                        hintText: " Enter Email Id",
                                        labelText: "Email Id",
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Enter a valid email id";
                                        } else if (value.length < 12) {
                                          return "Enter a valid email id";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFormField(
                                      keyboardType:
                                          TextInputType.numberWithOptions(),
                                      controller: password,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 127, 56, 221),
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
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: address,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.home),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 127, 56, 221),
                                                width: 2)),
                                        hintText: " Enter your Address",
                                        labelText: "Address",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            print("VAlidate");
                                            FirebaseAuth.instance
                                                .createUserWithEmailAndPassword(
                                                    email: email.text,
                                                    password: password.text)
                                                .then((value) => storeUser);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SellPage()),
                                          );
                                            } else {
                                              print("Form not validate");
                                            }
                                        },
                                        child: Text("Register")),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ))));
  }
}
