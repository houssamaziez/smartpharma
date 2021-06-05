import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final tiltestyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 26.0,
  height: 1.5,
);
final dialogestyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
  height: 1.5,
);

class Debute extends StatefulWidget {
  @override
  _DebuteState createState() => _DebuteState();
}

class _DebuteState extends State<Debute> {
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numpage; i++) {
      list.add(i == corpage ? _ind(true) : _ind(false));
    }
    return list;
  }

  Widget _ind(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 450),
      margin: EdgeInsets.symmetric(horizontal: 19.0),
      height: 5.0,
      width: isActive ? 20.0 : 20.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF00F396),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  int corpage = 0;
  int numpage = 2;
  final tiltestyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26.0,
    height: 1.5,
  );
  final dialogestyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    height: 1.5,
  );

  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "images/img4.jpg",
                ))),
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, right: 18),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushNamed('home');
                          });
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 430,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (page) {
                            setState(() {
                              corpage = page;
                            });
                          },
                          children: [
                            fff('اتصل و استفسر على دواء', "images/img1.png",
                                "يمكنك الاتصال بي الصسدلية ومراسلتهم للحصول على معلومات الدواء وتوفره عندهم "),
                            fff('موقع تواجد الدواء', "images/img2.png",
                                "يمكنك امعرفة اقرب مكان يتواجد فيه جواء الذي تبحث عنه بسهولة  و امعرفة اماكن الصيجليات  "),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                    ),
                    corpage != numpage - 1
                        ? Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 70,
                                  ),
                                  child: corpage != 0
                                      ? InkWell(
                                          onTap: () {
                                            setState(() {
                                              _pageController.previousPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            });
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.arrow_back,
                                                color: Colors.white,
                                                size: 26,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "back",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Container(),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 70, right: 10),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Next",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 00,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 26,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed('home'),
                                  child: Center(
                                    child: Text(
                                      'start',
                                      style: TextStyle(
                                        color: Color(0xFF020000),
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget fff(String title, image, dial) {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          child: Center(
            child: Image(
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: tiltestyle,
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
          child: Text(
            dial,
            style: dialogestyle,
          ),
        ),
      ],
    ),
  );
}
