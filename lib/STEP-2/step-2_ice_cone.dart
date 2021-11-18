import 'package:flutter/material.dart';
import 'package:smiledessert_gen/cart/cart.dart';
import 'package:smiledessert_gen/master_widget.dart';
import 'masterstep_2.dart';
import 'package:smiledessert_gen/home.dart';

//กำหนดตัวแปรว่ามาจากหน้าไหน
int Screennum = 1;

//เลือกรสชาติscoop1 แบบ cone
int whatisflavorcone = 0;

//เลือกรสชาติscoop2 แบบ cone
int whatisflavorcone2 = 0;

//เลือกรสชาติscoop3 แบบ cone
int whatisflavorcone3 = 0;

// main
class Step_2_ice extends StatefulWidget {
  Step_2_ice({Key? key}) : super(key: key);

  @override
  _Step_2_iceState createState() => _Step_2_iceState();
}

class _Step_2_iceState extends State<Step_2_ice> {
//var
  int scoop = 1;

  void _addquantity() {
    if (scoop == 3)
      setState(() {
        scoop = 3;
      });
    else
      setState(() {
        scoop++;
      });
  }

  void _addquantityy() {
    setState(() {
      scoop = 1;
    });
  }

  void _minusquantity() {
    if (scoop == 1)
      setState(() {
        scoop = 1;
        whatisflavorcone2 = 0;
        whatisflavorcone3 = 0;
      });
    else
      setState(() {
        scoop--;
      });
  }

//varเลือกรสวานิลา
  bool isActiveva = false;

  void Activeva() {
    setState(() {
      isActiveva = true;
      isActivech = false;
      isActivecc = false;
      isActivest = false;
      whatisflavorcone = 1;
    });
  }

//varเลือกรสช็อกโกแลต
  bool isActivech = false;

  void Activech() {
    setState(() {
      isActivech = true;
      isActiveva = false;
      isActivecc = false;
      isActivest = false;
      whatisflavorcone = 2;
    });
  }

//varเลือกรสช็อคชิพ
  bool isActivecc = false;

  void Activecc() {
    setState(() {
      isActivecc = true;
      isActivech = false;
      isActiveva = false;
      isActivest = false;
      whatisflavorcone = 3;
    });
  }

//varเลือกรสสตรอเบอร์รี่
  bool isActivest = false;

  void Activest() {
    setState(() {
      isActivest = true;
      isActivecc = false;
      isActivech = false;
      isActiveva = false;
      whatisflavorcone = 4;
    });
  }

//var2เลือกรสวานิลา
  bool isActiveva2 = false;

  void Activeva2() {
    setState(() {
      isActiveva2 = true;
      isActivech2 = false;
      isActivecc2 = false;
      isActivest2 = false;
      whatisflavorcone2 = 1;
    });
  }

//var2เลือกรสช็อกโกแลต
  bool isActivech2 = false;

  void Activech2() {
    setState(() {
      isActivech2 = true;
      isActiveva2 = false;
      isActivecc2 = false;
      isActivest2 = false;
      whatisflavorcone2 = 2;
    });
  }

//var2เลือกรสช็อคชิพ
  bool isActivecc2 = false;

  void Activecc2() {
    setState(() {
      isActivecc2 = true;
      isActivech2 = false;
      isActiveva2 = false;
      isActivest2 = false;
      whatisflavorcone2 = 3;
    });
  }

//var2เลือกรสสตรอเบอร์รี่
  bool isActivest2 = false;

  void Activest2() {
    setState(() {
      isActivest2 = true;
      isActivecc2 = false;
      isActivech2 = false;
      isActiveva2 = false;
      whatisflavorcone2 = 4;
    });
  }

//var3เลือกรสวานิลา
  bool isActiveva3 = false;

  void Activeva3() {
    setState(() {
      isActiveva3 = true;
      isActivech3 = false;
      isActivecc3 = false;
      isActivest3 = false;
      whatisflavorcone3 = 1;
    });
  }

//var3เลือกรสช็อกโกแลต
  bool isActivech3 = false;

  void Activech3() {
    setState(() {
      isActivech3 = true;
      isActiveva3 = false;
      isActivecc3 = false;
      isActivest3 = false;
      whatisflavorcone3 = 2;
    });
  }

//var3เลือกรสช็อคชิพ
  bool isActivecc3 = false;

  void Activecc3() {
    setState(() {
      isActivecc3 = true;
      isActivech3 = false;
      isActiveva3 = false;
      isActivest3 = false;
      whatisflavorcone3 = 3;
    });
  }

//var3เลือกรสสตรอเบอร์รี่
  bool isActivest3 = false;

  void Activest3() {
    setState(() {
      isActivest3 = true;
      isActivecc3 = false;
      isActivech3 = false;
      isActiveva3 = false;
      whatisflavorcone3 = 4;
    });
  }

//เลือกรสอะไรแล้วนำเข้าตะกร้า
// 1 วานิลา
// 2 ช็อก
// 3 ช็อกชิพ
// 4 สตรอเบอร์รี่

//กำหนดรสชาติที่เลือกในscoop1
//function AddtoCart
  void addtocart() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CartScreen()),
    );
    setState(() {
      Screennum = 2;
    });
    //scoop1
    if (whatisflavorcone == 1)
      setState(() {
        whatisflavorconetext = 'Vanilla';
      });
    if (whatisflavorcone == 2)
      setState(() {
        whatisflavorconetext = 'Chocolate';
      });
    if (whatisflavorcone == 3)
      setState(() {
        whatisflavorconetext = 'Choc-Chip';
      });
    if (whatisflavorcone == 4)
      setState(() {
        whatisflavorconetext = 'Strawberry';
      });
    //scoop2
    if (whatisflavorcone2 == 1)
      setState(() {
        whatisflavorconetext2 = 'Vanilla';
      });
    if (whatisflavorcone2 == 2)
      setState(() {
        whatisflavorconetext2 = 'Chocolate';
      });
    if (whatisflavorcone2 == 3)
      setState(() {
        whatisflavorconetext2 = 'Choc-Chip';
      });
    if (whatisflavorcone2 == 4)
      setState(() {
        whatisflavorconetext2 = 'Strawberry';
      });
    //scoop3
    if (whatisflavorcone3 == 1)
      setState(() {
        whatisflavorconetext3 = 'Vanilla';
      });
    if (whatisflavorcone3 == 2)
      setState(() {
        whatisflavorconetext3 = 'Chocolate';
      });
    if (whatisflavorcone3 == 3)
      setState(() {
        whatisflavorconetext3 = 'Choc-Chip';
      });
    if (whatisflavorcone3 == 4)
      setState(() {
        whatisflavorconetext3 = 'Strawberry';
      });
    if (scoop == 1)
      setState(() {
        whatisflavorconetext2 = '';
        whatisflavorconetext3 = '';
      });
    if (scoop == 2)
      setState(() {
        whatisflavorconetext3 = '';
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade200,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Icecream_home()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 1,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 23, bottom: 30, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "STEP 2",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Scoop &",
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Flavors",
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "Choose How many",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            "your scoops and flavors ?",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 60, left: 20, top: 30),
                      child: Container(
                        child: Image.asset("assets/images/ice-cream-cone.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cone",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Ice-cream",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: _minusquantity,
                        child: Stack(
                          children: [
                            Container(
                              height: size.height * 0.07,
                              width: size.width * 0.145,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Positioned(
                              bottom: 9,
                              left: 0,
                              right: 0,
                              child: Icon(
                                Icons.horizontal_rule_rounded,
                                size: 35,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: size.height * 0.07,
                            width: size.width * 0.145,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Positioned(
                            top: 10,
                            left: 20,
                            child: Row(
                              children: [
                                Text(
                                  "$scoop",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      GestureDetector(
                        onTap: _addquantity,
                        child: Stack(
                          children: [
                            Container(
                              height: size.height * 0.07,
                              width: size.width * 0.145,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 0,
                              right: 0,
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.grey.shade300,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
//scoop1
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Scoop 1 :",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        //vanilla
                        GestureDetector(
                          onTap: Activeva,
                          child: isActiveva
                              ? Opacity(
                                  opacity: 1,
                                  child: FlavorsBox(
                                    flavors: 'Vanilla',
                                    image: 'assets/images/vanilla-scoop.png',
                                  ),
                                )
                              : Opacity(
                                  opacity: 0.5,
                                  child: FlavorsBox(
                                    flavors: 'Vanilla',
                                    image: 'assets/images/vanilla-scoop.png',
                                  ),
                                ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        //Chocolate
                        GestureDetector(
                          onTap: Activech,
                          child: isActivech
                              ? Opacity(
                                  opacity: 1,
                                  child: FlavorsBox(
                                    flavors: 'Chocolate',
                                    image:
                                        'assets/images/ClipartKey_1758713.png',
                                  ),
                                )
                              : Opacity(
                                  opacity: 0.5,
                                  child: FlavorsBox(
                                    flavors: 'Chocolate',
                                    image:
                                        'assets/images/ClipartKey_1758713.png',
                                  ),
                                ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        //Choc-Chip
                        GestureDetector(
                          onTap: Activecc,
                          child: isActivecc
                              ? Opacity(
                                  opacity: 1,
                                  child: FlavorsBox(
                                    flavors: 'Choc-Chip',
                                    image:
                                        'assets/images/ClipartKey_1049905.png',
                                  ),
                                )
                              : Opacity(
                                  opacity: 0.5,
                                  child: FlavorsBox(
                                    flavors: 'Choc-Chip',
                                    image:
                                        'assets/images/ClipartKey_1049905.png',
                                  ),
                                ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        //Strawberry
                        GestureDetector(
                          onTap: Activest,
                          child: isActivest
                              ? Opacity(
                                  opacity: 1,
                                  child: FlavorsBox(
                                    flavors: 'Strawberry',
                                    image:
                                        'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                  ),
                                )
                              : Opacity(
                                  opacity: 0.5,
                                  child: FlavorsBox(
                                    flavors: 'Strawberry',
                                    image:
                                        'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                  ),
                                ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

//scoop1 - end
//scoop2
                  if (scoop >= 2)
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Scoop 2 :",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              //vanilla
                              GestureDetector(
                                onTap: Activeva2,
                                child: isActiveva2
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Vanilla',
                                          image:
                                              'assets/images/vanilla-scoop.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Vanilla',
                                          image:
                                              'assets/images/vanilla-scoop.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Chocolate
                              GestureDetector(
                                onTap: Activech2,
                                child: isActivech2
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Chocolate',
                                          image:
                                              'assets/images/ClipartKey_1758713.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Chocolate',
                                          image:
                                              'assets/images/ClipartKey_1758713.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Choc-Chip
                              GestureDetector(
                                onTap: Activecc2,
                                child: isActivecc2
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Choc-Chip',
                                          image:
                                              'assets/images/ClipartKey_1049905.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Choc-Chip',
                                          image:
                                              'assets/images/ClipartKey_1049905.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Strawberry
                              GestureDetector(
                                onTap: Activest2,
                                child: isActivest2
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Strawberry',
                                          image:
                                              'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Strawberry',
                                          image:
                                              'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                      ],
                    ),
//scoop2 - end
//scoop3
                  if (scoop == 3)
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Scoop 3 :",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              //vanilla
                              GestureDetector(
                                onTap: Activeva3,
                                child: isActiveva3
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Vanilla',
                                          image:
                                              'assets/images/vanilla-scoop.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Vanilla',
                                          image:
                                              'assets/images/vanilla-scoop.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Chocolate
                              GestureDetector(
                                onTap: Activech3,
                                child: isActivech3
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Chocolate',
                                          image:
                                              'assets/images/ClipartKey_1758713.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Chocolate',
                                          image:
                                              'assets/images/ClipartKey_1758713.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Choc-Chip
                              GestureDetector(
                                onTap: Activecc3,
                                child: isActivecc3
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Choc-Chip',
                                          image:
                                              'assets/images/ClipartKey_1049905.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Choc-Chip',
                                          image:
                                              'assets/images/ClipartKey_1049905.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              //Strawberry
                              GestureDetector(
                                onTap: Activest3,
                                child: isActivest3
                                    ? Opacity(
                                        opacity: 1,
                                        child: FlavorsBox(
                                          flavors: 'Strawberry',
                                          image:
                                              'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                        ),
                                      )
                                    : Opacity(
                                        opacity: 0.5,
                                        child: FlavorsBox(
                                          flavors: 'Strawberry',
                                          image:
                                              'assets/images/29-294580_ice-cream-flavor-food-scoops-scoops-ice-cream.png',
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                      ],
                    ),
//scoop3 - end
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AddtoCart(
        press: addtocart,
      ),
    );
  }
}
