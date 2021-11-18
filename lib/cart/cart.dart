import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smiledessert_gen/home.dart';
import 'package:smiledessert_gen/models/Cartinfo.dart';
import 'package:smiledessert_gen/STEP-2/step-2_ice_cone.dart';
import 'package:http/http.dart' as http;

import '../thankyou.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //Functionในการกลับไปหน้าที่จากมา
            if (Screennum == 2)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Step_2_ice()),
              );
            else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Icecream_home()));
            }
          },
          icon: Image.asset("assets/icons/back (1).png"),
        ),
        title: Column(
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.caption,
                children: [
                  TextSpan(
                    text: "My",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Cart',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              productlist.length.toString() + ' items',
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: CartPageBody(),
      bottomNavigationBar: CheckOut(),
    );
  }
}

String whatisflavorconetext = '';
String whatisflavorconetext2 = '';
String whatisflavorconetext3 = '';
//ราคาตามจำนวนscoop
double priceofscoop = 0;

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -5),
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  "50 ฿",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThankPage()),
              );
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Check Out",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartPageBody extends StatefulWidget {
  CartPageBody({Key? key}) : super(key: key);

  @override
  _CartPageBodyState createState() => _CartPageBodyState();
}

class _CartPageBodyState extends State<CartPageBody> {
  @override
  void initState() {
    super.initState();
    getCartlist();
  }

  Future<void> getCartlist() async {
    var request = http.Request('GET',
        Uri.parse('https://corona.lmao.ninja/v2/countries?sort=country'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
    print("ดึงข้อมูลมาแล้วจ้า");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: productlist.map((cartinfo) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 7),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.05),
                        )
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.2595,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.02,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                    'assets/images/ice-cream-cone.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartinfo.title.toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Vanilla',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Chocolate',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Choc-Chip',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Text(
                        '50',
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 23,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
