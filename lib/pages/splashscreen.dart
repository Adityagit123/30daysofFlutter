import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/sellpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
          setState(
            () {
              changeButton = false;
            },
          );
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
    return Material(
      child: Expanded(
        child: Image.asset(
          "assets/images/cart.png",
        ),
      ),
    );
  }
}
