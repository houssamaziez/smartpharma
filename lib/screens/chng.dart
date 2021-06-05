import 'package:flutter/material.dart';

class Chng extends StatefulWidget {
  @override
  _chngState createState() => _chngState();
}

class _chngState extends State<Chng> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFFFFFFF).withOpacity(0.5),
                  Color(0xFF979989).withOpacity(0.5),
                  Color(0xFFD3D4C9).withOpacity(0.5),
                  Color(0xFFD4D2B6).withOpacity(0.5),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              top: 100,
              left: 30,
              right: 30,
              bottom: 100,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFFFFFFFD).withOpacity(0.5),
                    Color(0xFFFFFFFF).withOpacity(0.5),
                    Color(0xFFFAFAFA).withOpacity(0.5),
                    Color(0xFFD2D6CA).withOpacity(0.5),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('SignUp');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.black26,
                          ),
                          height: 40,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.person),
                              ),
                              Align(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "User‏",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Spacer(),
                              Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('SignUp');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.black26,
                          ),
                          height: 40,
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.local_pharmacy,
                                  )),
                              Align(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Provider‏",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Spacer(),
                              Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
