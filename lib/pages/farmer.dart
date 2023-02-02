import 'package:flutter/material.dart';
import 'package:flutter_application_1/sellpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class FarmerPage extends StatefulWidget {
  const FarmerPage({super.key});

  @override
  State<FarmerPage> createState() => _FarmerPageState();
}

class _FarmerPageState extends State<FarmerPage> {
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
                          "assets/images/store.png",
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
                              child: Center(
                                child: Text(
                                  "Sell Here",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 18, 82, 20),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Login to Continue",
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(
                    height: 50,
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
                        hintText:
                            " Enter Your Product (Wheat, Rice, Pulses, Cereals, Vegetables, Fruits)",
                        labelText: "Product Name",
                      ),
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Please enter product name";
                      //   } else if (value!={Wheat, Rice, Pulses, Cereals, Vegetables, Fruits}) {
                      //     return "Invalid Account No.";
                      //   }
                      //   return null;
                      // },
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
                        hintText:
                            " Product type ( eg. if Fruits then Mango, Papaya)",
                        labelText: "Product type",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 167, 245, 136)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: " Amount (eg. 2 tons)",
                        labelText: "Amount",
                      ),
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
                        hintText: " Price per kg (eg papaya @ ₹55 per kg)",
                        labelText: "Price",
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
                          child: Text("Sell"),
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
