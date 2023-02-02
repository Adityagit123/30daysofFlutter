import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/farmer.dart';
import 'package:flutter_application_1/pages/payment_page.dart';
import 'package:flutter_application_1/pages/farmer.dart';
import 'package:flutter_application_1/pages/price.dart';
import 'package:flutter_application_1/sellagro.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:url_launcher/url_launcher.dart';

class SellPage extends StatefulWidget {
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  String name = "";

  bool changeButton = false;

  TextEditingController controller = TextEditingController();

  // List of items in our dropdown menu
  final _formKey = GlobalKey<FormState>();

  get ftcontroller => null;

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

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
      // backgroundColor: Color.fromARGB(255, 227, 245, 228),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 225, 222, 222),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 20, 19, 19), fontSize: 14),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.green,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Container(
                                  // color: Color.fromARGB(255, 227, 245, 228),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/wheat.jpg",
                                        height: 40,
                                      ),
                                      // color: Col),
                                      Text(
                                        'wheat',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/rice.jpg",
                                      height: 40,
                                    ),
                                    Text(
                                      'rice',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/cereals.jpg",
                                      height: 40,
                                    ),
                                    Text(
                                      'cereals',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pulses.jpg",
                                      height: 40,
                                    ),
                                    Text(
                                      'pulses',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/vegetables.jpg",
                                      height: 40,
                                    ),
                                    Text(
                                      'vegetables',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PricePage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/fruits.jpg",
                                      height: 40,
                                    ),
                                    Text(
                                      'fruits',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: InkWell(
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SellAgroPage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/cart.png",
                                      height: 54,
                                    ),
                                    Text(
                                      'Buy',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FarmerPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/sell.png",
                                    height: 48,
                                  ),
                                  Text(
                                    'Sell',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Uri _url =
                                    Uri.parse('https://mausam.imd.gov.in/');
                                _launchUrl(_url);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/weather.png",
                                    height: 48,
                                  ),
                                  Text(
                                    'Weather',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SellAgroPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/rate.png",
                                    height: 48,
                                  ),
                                  Text(
                                    'Rate us',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SellAgroPage()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/price.png",
                                    height: 48,
                                  ),
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Uri _url =
                                    Uri.parse('https://agricoop.nic.in/en/Mou');
                                _launchUrl(_url);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/crops_information.png",
                                    height: 48,
                                  ),
                                  Text(
                                    'More',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 170,
                  width: 350,
                  child: Card(
                    elevation: 5,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(children: [
                                Image.asset(
                                  "assets/images/deal.png",
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Today's Best Deals",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 237, 133, 102)),
                                ),
                              ]),
                              SizedBox(
                                height: 20,
                              ),
                              Row(children: [
                                Image.asset(
                                  "assets/images/rice_sack.png",
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PricePage()),
                                    );
                                  },
                                  child: Text(
                                    'Basmati Rice @ just ₹45 per kg',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ]),
                              SizedBox(
                                height: 20,
                              ),
                              Row(children: [
                                Image.asset(
                                  "assets/images/apple.png",
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PricePage()),
                                    );
                                  },
                                  child: Text(
                                    'Fresh Apples @ just ₹70 per kg',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                )
                              ]),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/updates.png",
                            height: 40,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Daily updates",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 237, 133, 102)),
                          ),
                        ]),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Image.asset(
                              "assets/images/maha_symbol.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Uri _url = Uri.parse(
                                    'https://krishi.maharashtra.gov.in/');
                                _launchUrl(_url);
                              },
                              child: Text(
                                'New government schemes',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 216, 236)),
                              ),
                            ),
                          )
                        ]),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(
                              "assets/images/virus.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Uri _url = Uri.parse('https://niphm.gov.in/');
                                _launchUrl(_url);
                              },
                              child: Text(
                                'Newly infected plant virus',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 216, 236)),
                              ),
                            ),
                          ),
                        ]),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(
                              "assets/images/fertilizers.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Uri _url = Uri.parse(
                                    'https://www.fert.nic.in/home-page');
                                _launchUrl(_url);
                              },
                              child: Text(
                                'Best fertilizers to use',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 216, 236)),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
