import 'package:flutter/material.dart';

import 'home.dart';

// ignore: must_be_immutable
class Menu extends StatefulWidget {
  Menu(this._bl);

  Color _bl;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var B = Colors.black;
  bool istru = false;
  double screenhig, screenwith;

  Widget mnu() {
    Color b = Colors.black;
    var size_text_icon = 20.2;
    return Container(
      color: Color(0xFFFFFDFD),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 70),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      b = Colors.white;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(400),
                          ),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/img3.jpg",
                              )),
                        ),
                        decoration: BoxDecoration(
                            color: b.withOpacity(0.7),
                            borderRadius: BorderRadius.all(
                              Radius.circular(400),
                            )),
                        height: 70,
                        width: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Name ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('home');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, top: 100),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        size: size_text_icon,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "home ",
                          style: TextStyle(
                            fontSize: size_text_icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, top: 40),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: size_text_icon,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Person ",
                          style: TextStyle(
                            fontSize: size_text_icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      size: size_text_icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Friends",
                        style: TextStyle(
                          fontSize: size_text_icon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      size: size_text_icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Language‏",
                        style: TextStyle(
                          fontSize: size_text_icon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.save_alt,
                      size: size_text_icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("login");
                        },
                        child: Text(
                          "login",
                          style: TextStyle(
                              fontSize: size_text_icon, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.login,
                      size: size_text_icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "Exit",
                        style: TextStyle(
                            fontSize: size_text_icon, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [mnu(), Home1()],
      ),
    );
  }
}
