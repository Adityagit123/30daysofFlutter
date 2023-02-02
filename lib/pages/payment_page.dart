import "package:flutter/material.dart";
import 'package:flutter_application_1/sellpage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String name = "";
  bool changeButton = false;

  String bank = 'Select';

  // List of items in our dropdown menu
  var Bank = [
    'SBI',
    'Union Bank',
    'PNB',
    'Axis Bank',
    'IDBI Bank',
  ];
  String paymentmode = 'Select';

  // List of items in our dropdown menu
  var Cash = [
    'cash',
    'e-Wal',
    'cr',
    'Ne',
  ];

  final _formKey = GlobalKey<FormState>();
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Card(
              color: Color.fromARGB(255, 242, 251, 242),
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/secure-payment.png",
                          height: 50,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 248, 168, 162),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Payment page",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 18, 82, 20),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 167, 245, 136)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: " Enter Your Bank Account No.",
                        labelText: "Account No.",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the Bank Account No.";
                        } else if (value.length < 12) {
                          return "Invalid Account No.";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 167, 245, 136)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: " Enter Pincode of your Area",
                        labelText: "Pincode",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 167, 245, 136)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: " Enter Address (* Not Compulsary)",
                        labelText: "Address",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         border: Border.all(
                  //             width: 3,
                  //             color: Color.fromARGB(255, 167, 245, 136)),
                  //         borderRadius: BorderRadius.all(Radius.circular(50))),
                  //     child: Row(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(14.0),
                  //           child: Text("Select your Bank"),
                  //         ),
                  //         SizedBox(
                  //           width: 20,
                  //         ),
                  //         DropdownButton(
                  //           // Initial Value
                  //           value: bank,

                  //           // Down Arrow Icon
                  //           icon: const Icon(Icons.keyboard_arrow_down),

                  //           // Array list of items
                  //           items: Bank.map((String items) {
                  //             return DropdownMenuItem(
                  //               value: items,
                  //               child: Text(items),
                  //             );
                  //           }).toList(),

                  //           onChanged: (String? newValue) {
                  //             setState(() {
                  //               bank = newValue!;
                  //             });
                  //           },
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SellPage()));
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(300))),
                          child: Text("Pay"),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
