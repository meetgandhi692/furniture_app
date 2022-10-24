import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'checkoutPage.dart';

class SummaryPage extends StatelessWidget {
  final String address1, address2, city, state;
  final int pincode;
  const SummaryPage(
      this.address1, this.address2, this.pincode, this.city, this.state,
      {super.key});
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
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Delivery Address",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400)),
            buildSizedBox(15),
            Text(
              "$address1, $address2",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            Text(
              "$city - $pincode",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            Text(
              state,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.w300),
                    ))),
            buildSizedBox(15),
            const Text("Select Payment Method",style: TextStyle(color: Colors.white,fontSize: 22),),
            buildSizedBox(10),
            const Card(
              margin: EdgeInsets.fromLTRB(12,10,12,0),
              color: Color.fromRGBO(60, 60, 73, 1.0),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('UPI',style: TextStyle(color: Colors.white),),
              ),
            ),
            const Card(
              margin: EdgeInsets.fromLTRB(12,10,12,0),
              color: Color.fromRGBO(60, 60, 73, 1.0),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Credit/Debit Card',style: TextStyle(color: Colors.white),),
              ),
            ),
            const Card(
              margin: EdgeInsets.fromLTRB(12,10,12,0),
              color: Color.fromRGBO(60, 60, 73, 1.0),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Cash on Delivery',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double h) => SizedBox(height: h);
}
