import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late Object table;
  @override
  void initState() {
    table = Object(fileName: "assets/table/table.obj");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // toolbarHeight: 75,
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/back.svg",
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 30.0),
            child: Badge(
              badgeContent: Text('0'),
              // badgeColor: Colors.blueAccent,
              child: SvgPicture.asset(
                "assets/svg/heart.svg",
                width: 25.5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 20.0),
            child: Badge(
              badgeContent: Text('0'),
              child: SvgPicture.asset("assets/svg/cart.svg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    height: size.height * 0.7,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Cube(
                    onSceneCreated: (Scene scene) {
                      scene.world.add(table);
                      scene.camera.zoom = 4;
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          'Product Name',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
