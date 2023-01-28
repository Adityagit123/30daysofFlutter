import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class FinishPage extends StatefulWidget {
  const FinishPage({super.key});

  @override
  State<FinishPage> createState() => _FinishState();
}

class _FinishState extends State<FinishPage> {
  String name = "";
  bool changeButton = false;

  TextEditingController controller = TextEditingController();
  String dropdownvalue = 'Items';
  // List of items in our dropdown menu
  var items = [
    'Wheat',
    'Rice',
    'Barley',
    'Cereals',
    'Pulses',
  ];

  // String dropdownvalue = 'Item 1';

  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];
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
    var selectedVal;
    return Material(
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Container(
                        width: 400,
                        height: 300,
                        child: Image.asset(
                          "assets/images/crop_image.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      // child: Text("aditya")
                    ),
                    Text(" $name",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500)),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  hintText: " Enter your name ",
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 127, 56, 221),
                                          width: 2))),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            DropdownButton2(
                              icon: Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              hint: Text(
                                "Grains ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedVal,
                              onChanged: (value) {
                                setState(() {
                                  selectedVal = value as String;
                                  controller.text = selectedVal!;
                                });
                              },
                              buttonHeight: 60,
                              buttonWidth: 400,
                              itemHeight: 40,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            DropdownButton2(
                              icon: Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              hint: Text(
                                " Vegetables and Fruits ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedVal,
                              onChanged: (value) {
                                setState(() {
                                  selectedVal = value as String;
                                  controller.text = selectedVal!;
                                });
                              },
                              buttonHeight: 60,
                              buttonWidth: 400,
                              itemHeight: 40,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.height),
                                  hintText: "   Select your Bank ",
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 127, 56, 221),
                                          width: 2))),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.height),
                                  hintText: "   Enter your height (inch)",
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 127, 56, 221),
                                          width: 2))),
                            ),
                            SizedBox(
                              height: 25,
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
                              ),
                            ),
                          ],
                        )),
                    Row(
                      children: [
                        Center(
                          child: IconButton(
                            onPressed: () {},
                            color: Colors.greenAccent, //<-- SEE HERE
                            iconSize: 100,
                            icon: Icon(
                              Icons.shopping_cart,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Make Payment",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ],
                    )
                  ],
                ))));
  }
}
