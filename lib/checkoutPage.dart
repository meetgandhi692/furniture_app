import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'summaryPage.dart';

class CheckoutPage extends StatefulWidget {
  String address1 = "", address2 = "", city = "", state = "";
  int pincode = 0;
  CheckoutPage(
      {super.key,
      this.address1 = "",
      this.address2 = "",
      this.pincode = 0,
      this.city = "",
      this.state = ""});
  @override
  State<CheckoutPage> createState() =>
      _CheckoutPageState(address1, address2, pincode, city, state);
}

class _CheckoutPageState extends State<CheckoutPage> {
  String address1 = "", address2 = "", city = "", state = "";
  int pincode = 0;
  _CheckoutPageState(
      this.address1, this.address2, this.pincode, this.city, this.state);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 53, 57, 1),
      appBar: AppBar(
        title: const Text('Checkout'),
        elevation: 2,
        backgroundColor: const Color.fromRGBO(44, 53, 57, 1),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/svg/back.svg",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter Delivery Address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              buildSizedBox(20),
              TextField(
                onChanged: (text) {
                  setState(() {
                    address1 = text;
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(252, 248, 248, 1.0),
                  border: OutlineInputBorder(),
                  hintText: "Address 1",
                ),
              ),
              buildSizedBox(20),
              TextField(
                onChanged: (text) {
                  setState(() {
                    address2 = text;
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(252, 248, 248, 1.0),
                  border: OutlineInputBorder(),
                  hintText: "Address 2",
                ),
              ),
              buildSizedBox(20),
              TextField(
                maxLength: 6,
                onChanged: (text) {
                  setState(() {
                    pincode = int.parse(text);
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(252, 248, 248, 1.0),
                  border: OutlineInputBorder(),
                  hintText: "Pincode",
                ),
              ),
              TextField(
                onChanged: (text) {
                  setState(() {
                    city = text;
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(252, 248, 248, 1.0),
                  border: OutlineInputBorder(),
                  hintText: "City",
                ),
              ),
              buildSizedBox(20),
              TextField(
                onChanged: (text) {
                  setState(() {
                    state = text;
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(252, 248, 248, 1.0),
                  border: OutlineInputBorder(),
                  hintText: "State",
                ),
              ),
              buildSizedBox(20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(67, 138, 245, 1.0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SummaryPage(
                              address1, address2, pincode, city, state)));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text(
                    'Proceed to Checkout',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double h) => SizedBox(height: h);
}
