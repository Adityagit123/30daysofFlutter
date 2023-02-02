import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/payment.dart';
import 'package:flutter_application_1/pages/payment_page.dart';
import 'package:flutter_application_1/pages/price.dart';
import 'package:flutter_application_1/sellpage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SellAgroPage extends StatefulWidget {
  @override
  State<SellAgroPage> createState() => _SellAgroState();
}

class _SellAgroState extends State<SellAgroPage> {
  String name = "";

  bool changeButton = false;

  TextEditingController controller = TextEditingController();

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
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 98, 96, 96),
          decoration: InputDecoration(
              hintText: 'Decide the price for your item',
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 60, 62, 58), fontSize: 14),
              prefixIcon: InkWell(
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SellPage()),
                  );
                 },
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.green,
                ),
              ),
              suffixIcon: Icon(
                Icons.arrow_drop_down_circle_rounded,
                color: Colors.green,
              )),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 560,
          child: ListView(
            children: [
              Text(
                "Stocks Present",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/wheat.jpg",
                    height: 40,
                  ),
                  title: Text('Aarav'),
                  subtitle: Text('Wheat - 2 tons'),
                  trailing: Icon(Icons.star),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentPage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/rice.jpg",
                    height: 40,
                  ),
                  title: Text('Aayush'),
                  subtitle: Text('Rice - 7 tons'),
                  trailing: Icon(Icons.food_bank),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/cereals.jpg",
                    height: 40,
                  ),
                  title: Text('Amay'),
                  subtitle: Text('cereals - 1 ton'),
                  trailing: Icon(Icons.star),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/vegetables.jpg",
                    height: 40,
                  ),
                  title: Text('Atmaram'),
                  subtitle: Text('Vegetables'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/wheat.jpg",
                    height: 40,
                  ),
                  title: Text('Ajay'),
                  subtitle: Text('Wheat - 2 tons'),
                  trailing: Icon(Icons.star),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/rice.jpg",
                    height: 40,
                  ),
                  title: Text('Antariksh'),
                  subtitle: Text('Wheat - 2 tons'),
                  trailing: Icon(Icons.food_bank),
                ),
              ),
              InkWell(
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/cereals.jpg",
                    height: 40,
                  ),
                  title: Text('Ajay'),
                  subtitle: Text('Cereals - 2 tons'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/rice.jpg",
                  height: 40,
                ),
                title: Text('Arjun'),
                subtitle: Text('Wheat - 2 tons'),
                trailing: Icon(Icons.star),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/fruits.jpg",
                    height: 40,
                  ),
                  title: Text('Aditya'),
                  subtitle: Text('Fruits'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/pulses.jpg",
                    height: 40,
                  ),
                  title: Text('Ankit'),
                  subtitle: Text('Pulses - 2 tons'),
                  trailing: Icon(Icons.star),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/vegetables.jpg",
                    height: 40,
                  ),
                  title: Text('Avishkar'),
                  subtitle: Text('vegetables'),
                  trailing: Icon(Icons.food_bank),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/cereals.jpg",
                    height: 40,
                  ),
                  title: Text('Aniket'),
                  subtitle: Text('cereals - 5 tons'),
                  trailing: Icon(Icons.star),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/wheat.jpg",
                    height: 40,
                  ),
                  title: Text('Aniruddha'),
                  subtitle: Text('Wheat - 2 tons'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/rice.jpg",
                    height: 40,
                  ),
                  title: Text('Advait'),
                  subtitle: Text('Wheat - 2 tons'),
                  trailing: Icon(Icons.food_bank),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PricePage()),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/pulses.jpg",
                    height: 40,
                  ),
                  title: Text('Amesh'),
                  subtitle: Text('Pulses - 2 tons'),
                  trailing: Icon(Icons.star),
                ),
              ),
            ],
          ),
        ),
        Container(
            child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.star),
                Text(
                  "Regular customers",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.food_bank),
                Text(
                  "Goods for Hotels",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ))
      ]),
    ))));
  }
}
