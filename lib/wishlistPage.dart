import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'productDetails.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'component/roundIconButton.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(44, 53, 57, 1),
        appBar: AppBar(
          title: const Text('Wishlist'),
          backgroundColor: const Color.fromRGBO(44, 53, 57, 1),
          elevation: 2,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              "assets/svg/back.svg",
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 20.0),
              child: Badge(
                badgeContent: const Text('0'),
                child: SvgPicture.asset("assets/svg/cart.svg"),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index,){
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //const SizedBox(width: 20,),
                    Image.asset('assets/images/sofa_3.jpg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        // width: 180,
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // textBaseline: TextBaseline.alphabetic,
                          children: [
                            buildSizedBox(25),
                            const Text('GAMMALBYN',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            buildSizedBox(2),
                            const Text('2-seat sofa, grey',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w200)),
                            buildSizedBox(5),
                            const Text(
                              'Rs 17,990',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            buildSizedBox(2),
                            Row(
                              children: [
                                RoundIconButton(Icons.add, () {
                                  setState(() {
                                    quantity++;
                                  });
                                }),
                                Text('$quantity'),
                                RoundIconButton(CupertinoIcons.minus, () {
                                  setState(() {
                                    if (quantity > 1) {
                                      quantity--;
                                    }
                                  });
                                }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: .0),
                      child: Icon(Icons.delete),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 8,
        ),
    );
  }

  SizedBox buildSizedBox(double h) => SizedBox(height: h);
}
