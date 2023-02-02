// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/payment_page.dart';
import 'package:flutter_application_1/sellagro.dart';
import 'package:flutter_application_1/sellpage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  // String name = "";
  bool changeButton = false;

  String x = 'Select';

  // // List of items in our dropdown menu
  var rice = [
    'Basmati ',
    'Mother India',
    'Long rice',
    'Brown rice',
    'Bomba rice',
  ];
  String? selectedValue;

  // List of items in our dropdown menu
  var cereals = [
    'paddy',
    'sorghum',
    'Bajra',
    'barley',
    'maize',
  ];

  String dropdownvalue2 = 'Toor';

  // List of items in our dropdown menu
  var pulses = [
    'Toor',
    'Chana',
    'Matki',
    'Rajma',
    'Moong',
  ];

  // String dropdownvalue3 = 'Tomato';

  // // List of items in our dropdown menu
  // var vegetables = [
  //   'Tomato',
  //   'Beetroot',
  //   'spinach',
  //   'Potato',
  //   'Onion',
  // ];

  // String dropdownvalue4 = 'Apples';

  // // List of items in our dropdown menu
  // var fruits = [
  //   'Apples',
  //   'Banana',
  //   'Grapes',
  //   'Papaya',
  //   'Strawberry',
  // ];

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
      backgroundColor: Color.fromARGB(255, 232, 249, 232),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // backgroundColor: Colors.green,
        child: Icon(Icons.shopping_cart_checkout_rounded),
      ),
      // backgroundColor: Color.fromARGB(255, 233, 244, 233),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SellPage()),
                        );
                      },
                      child: Image.asset(
                        "assets/images/back.png",
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Best Rates for Every Products ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 144, 176, 113),
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                      "assets/images/dropdown.png",
                      height: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 600,
                width: 380,
                child: SingleChildScrollView(
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/wheat.jpg",
                                    height: 60,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Wheat',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '@ ₹25per kg',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/rice.jpg",
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Rice',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),

                                      // DropdownButton(
                                      //   // Initial Value
                                      //   value: x,

                                      //   // Down Arrow Icon
                                      //   icon: const Icon(Icons.keyboard_arrow_down),

                                      //   // Array list of items
                                      //   items: rice.map((String items) {
                                      //     return DropdownMenuItem(
                                      //       value: items,
                                      //       child: Text(items),
                                      //     );
                                      //   }).toList(),

                                      //   onChanged: (String? newValue) {
                                      //     setState(() {
                                      //       x = newValue!;
                                      //     });
                                      //   },
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Basmati @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Mother India @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Long rice @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Brown rice @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Bomba rice @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/cereals.jpg",
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Cereals',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 62,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~paddy @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~sorghum @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Bajra @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Barley @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Maize @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pulses.jpg",
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Pulses',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 68,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Toor @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Chana @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Matki @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Rajma @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Moong @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/vegetables.jpg",
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Vegetables',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 73,
                                      ),

                                      // DropdownButton(
                                      //   // Initial Value
                                      //   value: dropdownvalue4,

                                      //   // Down Arrow Icon
                                      //   icon: const Icon(Icons.keyboard_arrow_down),

                                      //   // Array list of items
                                      //   items: fruits.map((String items) {
                                      //     return DropdownMenuItem(
                                      //       value: items,
                                      //       child: Text(items),
                                      //     );
                                      //   }).toList(),

                                      //   onChanged: (String? newValue) {
                                      //     setState(() {
                                      //       dropdownvalue4 = newValue!;
                                      //     });
                                      //   },
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Tomato @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Beetroot @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~spinach @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Potato @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Onion @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/fruits.jpg",
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Fruits',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      // DropdownButton(
                                      //   // Initial Value
                                      //   value: dropdownvalue3,

                                      //   // Down Arrow Icon
                                      //   icon: const Icon(Icons.keyboard_arrow_down),

                                      //   // Array list of items
                                      //   items: vegetables.map((String items) {
                                      //     return DropdownMenuItem(
                                      //       value: items,
                                      //       child: Text(items),
                                      //     );
                                      //   }).toList(),

                                      //   onChanged: (String? newValue) {
                                      //     setState(() {
                                      //       dropdownvalue3 = newValue!;
                                      //     });
                                      //   },
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Apples @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Banana @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Grapes @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Papaya @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '~Strawberry @ ₹25per kg',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //  Row(
                            //   children: [

                            //   ],
                            // ),
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
