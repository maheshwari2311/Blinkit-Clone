import 'package:flutter/material.dart';

class CateoryScreen extends StatelessWidget {
  const CateoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

    List grocerytwo = [
      "assets/kelogs.png",
      "assets/juicer.png",
      "assets/coffe.png",
      "assets/icream jar.png",
      "assets/maggi.png",
    ];

    List grocerytwonames = [
      "Dry Fruits Cereals",
      "Kitchen & Appliances",
      "Tea & Coffees",
      "Ice Creams & Desserts",
      "Noodles & pasta",
    ];

    List snacksphotos = [
      "assets/tooooyummm.png",
      "assets/butter scotch.png",
      "assets/rasna.png",
      "assets/mayo.png",
      "assets/lipstick.png",
    ];

    List snacksnames = [
      "Chips & Namkeens",
      "Sweets & Chocalates",
      "Drinks & Juices",
      "Sauces & Spreads",
      "Beauty & Cosmetics",
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0xFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 10),
                      child: Text(
                        "Blinkit in",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "assets/circleavtar.png",
                              color: Colors.black,
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          " Sujal Dave, Ratanada, Jodhpur (Raj)",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
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
                height: 10,
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

              // second line list
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: grocerytwo.length,
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
                          grocerytwo[index],
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
                          grocerytwonames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Snacks & Drinks",
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
                    itemCount: snacksphotos.length,
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
                          snacksphotos[index],
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
                          snacksnames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Household Essentials",
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
