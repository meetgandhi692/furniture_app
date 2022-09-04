import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'package:like_button/like_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color.fromRGBO(44, 53, 57, 1),
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 2,
        backgroundColor: Colors.blue,
        child: Icon(Icons.shopping_basket_rounded),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                // color: Colors.white,
                height: size.height * 0.4,
                alignment: Alignment.center,
                // color: Colors.white,
                child: Image.asset('assets/images/sofa_3.jpg'),
              ),
              DraggableScrollableSheet(
                maxChildSize: .68,
                initialChildSize: .6,
                minChildSize: .6,
                builder: (context, scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Color.fromRGBO(44, 53, 57, 1),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Container(
                            padding: EdgeInsets.only(left: 18),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'GAMMALBYN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.only(left: 18.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              '3-seat sofa, grey',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          const SizedBox(height: 14),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text(
                              'Rs. 25,000',
                              style: TextStyle(
                                fontSize: 38,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 28),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text(
                              'Product Information',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              width: 380,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Reviews',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.5,
                                  ),
                                ),
                                Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              width: 380,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // toolbarHeight: 75,
      backgroundColor: const Color.fromRGBO(44, 53, 57, 1),
      elevation: 2,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/svg/back.svg",
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 25.0),
          child: LikeButton(
            onTap: onLikeButtonTapped,
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: 10, right: 30.0),
        //   child: Badge(
        //     badgeContent: Text('0'),
        //     // badgeColor: Colors.blueAccent,
        //     child: SvgPicture.asset(
        //       "assets/svg/heart.svg",
        //       width: 25.5,
        //     ),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(top: 10, right: 20.0),
          child: Badge(
            badgeContent: Text('0'),
            child: SvgPicture.asset("assets/svg/cart.svg"),
          ),
        ),
      ],
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();
    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;
    return !isLiked;
  }
}
