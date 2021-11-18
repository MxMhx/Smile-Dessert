import 'package:flutter/material.dart';

import 'home.dart';

class ThankPage extends StatelessWidget {
  const ThankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[850]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/thank-you.png',
                height: size.height * 0.3,
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Icecream_home()),
                  );
                },
                child: Container(
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/home.png',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
