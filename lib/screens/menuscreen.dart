import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List newyear = [
    "assets/gadgets.png",
    "assets/soffa.png",
    "assets/perfume.png",
    "assets/spoons.png",
  ];

  List names = [
    "Appliances & Gadgets",
    "Furniture",
    "Perfumes",
    "Kitchen & Dining",
  ];

  List photos3 = [
    "assets/candle.png",
    "assets/namkeen.png",
    "assets/sweats.png",
  ];

  List groceryphotos = [
    "assets/atta.png",
    "assets/namak.png",
    "assets/lassi.png",
    "assets/borboun.png",
    "assets/vegetables.png",
  ];

  List namesgrocery = [
    "Atta, Dal & Rice",
    "Oil, Ghee & Masala",
    "Dairy, Bread & Milk",
    "Biscuits & Bakery",
    "Vegetables & Fruits"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0xFFEC0505),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 10),
                      child: Text(
                        "Blinkit in",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Text(
                            "16 minutes",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "assets/circleavtar.png",
                              height: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "HOME -",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          " Sujal Dave, Ratanada, Jodhpur (Raj)",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(
                              0xFFFFFFFF,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 40,
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Search “ice-cream”",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 160.0),
                              child: Text(
                                "|",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFFC5C5C5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.mic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0xFFEC0505),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Mega New-Year Sale",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFC5C5C5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 408,
                      height: 130,
                      child: ListView.builder(
                          itemCount: newyear.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 100,
                              height: 108,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      names[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50.0,
                                    ),
                                    child: Image.asset(
                                      newyear[index],
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 408,
                    height: 130,
                    child: ListView.builder(
                      itemCount: photos3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 100,
                          height: 108,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  photos3[index],
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Golden Glass",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Bikaji Bhujia",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "Gulab Jamun",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Grocery & Kitchen",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: groceryphotos.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9EBEB),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          groceryphotos[index],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: namesgrocery.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 80,
                        height: 15,
                        child: Text(
                          namesgrocery[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
