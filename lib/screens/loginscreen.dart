import 'package:blinket_application/screens/loginwithnum/numberslogin.dart';
import 'package:blinket_application/screens/navigation%20bar/bottomnavigation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List photos = [
    "assets/banana.png",
    "assets/pampers.png",
    "assets/dairymilk.png",
    "assets/perfume.png",
  ];
  List photos2 = [
    "assets/coffe.png",
    "assets/spoons.png",
    "assets/icecream.png",
    "assets/tonic.png",
  ];
  List photos3 = [
    "assets/waterlemon.png",
    "assets/flovercabbage.png",
    "assets/keshking.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                SizedBox(
                  height: 121,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: photos.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 10,
                          ),
                          height: 121,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F9FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                photos[index],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 121,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: photos2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 10,
                          ),
                          height: 121,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F9FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                photos2[index],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 121,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: photos3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10, left: 15),
                          height: 121,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F9FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                photos3[index],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/logoblinket.png",
                  height: 112,
                  width: 200,
                ),
                Text(
                  "India’s Last Minute App",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              width: 370,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kunal",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "7895xxxx",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NaviBottom(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login with",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Image.asset(
                            "assets/zomato.png",
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Access your saved addresses from Zomato ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyNumberLogin()));
                    },
                    child: Text(
                      "or login with phone number",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
