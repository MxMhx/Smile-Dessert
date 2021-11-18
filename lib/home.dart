import 'package:flutter/material.dart';
import 'master_widget.dart';
import 'STEP-2/step-2_ice_cone.dart';

class Icecream_home extends StatefulWidget {
  const Icecream_home({Key? key}) : super(key: key);

  @override
  _Icecream_homeState createState() => _Icecream_homeState();
}

class _Icecream_homeState extends State<Icecream_home> {
  Color colors = Colors.blue.shade200;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors,
      ),
      body: Body_ice(),
    );
  }
}

class Body_ice extends StatefulWidget {
  @override
  _Body_iceState createState() => _Body_iceState();
}

class _Body_iceState extends State<Body_ice> {
//ถ้าเลือกIce Creamอันอื่นจาง
  bool isActive1 = true;
  void isActiveIce() {
    setState(() {
      isActive1 = true;
      isActive2 = false;
      isActive3 = false;
    });
  }

//ถ้าเลือกCakeอันอื่นจาง
  bool isActive2 = false;
  void isActiveCake() {
    setState(() {
      isActive2 = true;
      isActive1 = false;
      isActive3 = false;
    });
  }

//ถ้าเลือกDonutอันอื่นจาง
  bool isActive3 = false;
  void isActiveDonut() {
    setState(() {
      isActive3 = true;
      isActive1 = false;
      isActive2 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderHome(
            color: Colors.blue.shade200,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.05,
                ),
                Container(
                  child: Stack(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: isActiveIce,
                    child: isActive1
                        ? Categories(
                            name: "ICE-CREAM",
                            image: "assets/images/ice-cream.png",
                            color: Colors.redAccent.shade100)
                        : Categories(
                            name: "ICE-CREAM",
                            image: "assets/images/ice-cream.png",
                            color: Colors.grey.shade200),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  GestureDetector(
                    onTap: isActiveCake,
                    child: !isActive2
                        ? Categories(
                            name: "CAKE",
                            image: "assets/images/cake.png",
                            color: Colors.grey.shade200)
                        : Categories(
                            name: "CAKE",
                            image: "assets/images/cake.png",
                            color: Colors.redAccent.shade100),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  GestureDetector(
                    onTap: isActiveDonut,
                    child: !isActive3
                        ? Categories(
                            name: "DONUT",
                            image: "assets/images/donut.png",
                            color: Colors.grey.shade200,
                          )
                        : Categories(
                            name: "DONUT",
                            image: "assets/images/donut.png",
                            color: Colors.redAccent.shade100),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
// Step - 1 Ice cream
          if (isActive1)
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
                      child: Text(
                        "STEP 1 - Contain",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 23),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Step_1(
                      nam: "Ice-cream",
                      subnam: "Cone",
                      price: "25-60 ฿",
                      image: "assets/images/pexels-calebe-miranda-108370.png",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Step_2_ice()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Ice-cream",
                      subnam: "Cup",
                      price: "25-100 ฿",
                      image: "assets/images/1569770-cover.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Ice-cream",
                      subnam: "Waffle",
                      price: "35-150 ฿",
                      image: "assets/images/photo-76-1.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
//step -1 Ice cream end
// Step - 1 Cake
          if (isActive2)
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
                      child: Text(
                        "All - Cake",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Step_1(
                      nam: "Cake",
                      subnam: "Browny",
                      price: "100 ฿",
                      image: "assets/images/browny.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Cake",
                      subnam: "Cheesecake",
                      price: "120 ฿",
                      image: "assets/images/cheesecake.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Cake",
                      subnam: "Crepe Cake",
                      price: "80 ฿",
                      image: "assets/images/crapecake.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
//step - 1 Cake end
// Step - 1 Donut
          if (isActive3)
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
                      child: Text(
                        "All - Doughnut",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Step_1(
                      nam: "Doughnut",
                      subnam: "Strawberry Frosted",
                      price: "30 ฿",
                      image: "assets/images/Strawberry Frosted Doughnut.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Doughnut",
                      subnam: "Cinnamon Twist",
                      price: "40 ฿",
                      image: "assets/images/Cinnamon Twist Doughnut.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Step_1(
                      nam: "Doughnut",
                      subnam: "Jelly",
                      price: "35 ฿",
                      image: "assets/images/Jelly Doughnut.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
//step - 1 Donut end
        ],
      ),
    );
  }
}
