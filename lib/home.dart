import 'package:flutter/material.dart';
import 'package:smartpharma01/screens/adopt_pet_screen.dart';

import 'models/pet_model.dart';

class Home1 extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  var B = Colors.black;
  bool istru = false;
  double screenhig, screenwith;

  Color _bl = Color(0xFFFAFAFA);

  Widget Covid(imageUrl, id, title, urlimg, img, description) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        width: 160,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(45))),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) =>
                      AdoptPetScreen(id, title, imageUrl, img, description),
                ),
              );
            },
            child: Hero(
              tag: pets[0].id,
              child: Container(
                height: screenhig,
                width: screenwith,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Duration durc = const Duration(milliseconds: 330);
    Size size = MediaQuery.of(context).size;
    screenhig = size.height;
    screenwith = size.width;
    bool clk = true;
    return Container(
      child: AnimatedPositioned(
        duration: durc,
        top: istru ? 0.1 * screenhig : 0,
        bottom: istru ? 0.1 * screenhig : 0,
        right: istru ? -0.6 * screenwith : 0,
        left: istru ? 0.6 * screenwith : 0,
        child: Material(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          elevation: 10,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Stack(
                    children: [
                      istru
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  istru = !istru;
                                });
                              },
                              child: Container(),
                            )
                          : Container(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                  iconSize: 30,
                                  icon: Icon(Icons.menu),
                                  onPressed: () {
                                    setState(
                                      () {
                                        istru = !istru;

                                        print(istru);
                                      },
                                    );
                                  },
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.local_pharmacy,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  image: AssetImage(
                                    "images/pls2.png",
                                  ),
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 30, bottom: 20),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                child: Text(
                                  "Available services‏   ",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: extraWidget(
                                      "images/img2.png", "Grocery")),
                              InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: extraWidget(
                                      "images/lab.png", "Fast delivery‏")),
                              InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: extraWidget(
                                      "images/dw3.png", "Curtains")),
                              InkWell(
                                child: extraWidget(
                                    "images/dw2.png", "Medication site‏"),
                                onTap: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 40,
                                  left: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    child: Text(
                                      "Best services‏ ‏ ",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 240),
                                child: Text(
                                  "Closest to you :",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 165,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: (pets)
                                    .map(
                                      (e) => Covid(e.imageUrl, e.id, e.name,
                                          e.imageUrl, e.img, e.description),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                          Container(
                            height: 400,
                            child: Column(
                              children: [],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column extraWidget(String img, String name) {
    Color purple = Color(0xFF72FD00).withOpacity(0.5);

    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(shape: BoxShape.circle, color: purple),
              child: Container(
                margin: EdgeInsets.all(17),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
