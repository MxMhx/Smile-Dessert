import 'package:flutter/material.dart';

class FlavorsBox extends StatelessWidget {
  final String? flavors, image;

  const FlavorsBox({
    this.flavors,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 1,
      child: Container(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.17,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
                top: 8,
                right: 10,
                child: Container(
                  width: size.width * 0.2,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                )),
            Positioned(
              top: 12,
              right: 15,
              child: Column(
                children: [
                  Image.asset(
                    image.toString(),
                    height: size.height * 0.085,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    flavors.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddtoCart extends StatelessWidget {
  const AddtoCart({this.press});

  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -3),
                blurRadius: 10,
                color: Colors.black.withOpacity(0.08))
          ]),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
