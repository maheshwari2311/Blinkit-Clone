import 'package:flutter/material.dart';

class MyNumberLogin extends StatelessWidget {
  const MyNumberLogin({super.key});

  @override
  Widget build(BuildContext context) {
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
              height: 5,
            ),
            Text(
              "Log in or sign up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 225, 225),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Enter Mobile Number",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Login With Number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "By continuing you agree to our Term of service & privacy policy",
              style: TextStyle(
                fontSize: 11,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
