import 'package:flutter/material.dart';

import 'cart/cart.dart';

// Categories Widget
class Categories extends StatelessWidget {
  final String? name, image;
  final Color? color;
  final bool isActive;
  // ignore: use_key_in_widget_constructors
  const Categories({this.name, this.image, this.color, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Container(
            width: size.width * 0.28,
            child: Stack(
              children: [
                Column(
                  children: [
                    if (!isActive)
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              image.toString(),
                              height: size.height * 0.09,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Categories
                            Text(
                              name.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color,
                        ),
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//step - 1
class Step_1 extends StatelessWidget {
  final String? nam, subnam, price, image;
  final GestureTapCallback? press;

  const Step_1({this.nam, this.subnam, this.price, this.image, this.press});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade50,
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 10,
                color: Colors.black.withOpacity(0.08),
              ),
            ],
          ),
          height: size.height * 0.15,
          width: size.width * 0.9,
          child: Row(
            children: [
              Image.asset(image.toString()),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nam.toString(),
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      subnam.toString(),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      price.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

//Header Home
class HeaderHome extends StatelessWidget {
  final Color? color;

  const HeaderHome({this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "   SMILE",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "  DESSERT",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  height: size.height * 0.2,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                      icon: Image.asset("assets/icons/shopping-cart.png")),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.grey.shade500.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child:
                        Image.asset("assets/icons/search-interface-symbol.png"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
