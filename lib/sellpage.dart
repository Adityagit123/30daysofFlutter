import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SellPage extends StatefulWidget {
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  String name = "";

  bool changeButton = false;

  TextEditingController controller = TextEditingController();

  String dropdownvalue = 'Items';

  // List of items in our dropdown menu
  final _formKey = GlobalKey<FormState>();

  get ftcontroller => null;

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      // ignore: use_build_context_synchronously
      await Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                      // child: Text("aditya")
                    ),
                    Text("Welcome $name",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
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
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
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
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: changeButton ? 50 : 150,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
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
                          ],
                        ))
                  ],
                ))));
  }
}
