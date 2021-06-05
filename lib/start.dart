import 'package:flutter/material.dart';

class Start extends StatelessWidget {
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
              top: 40,
              left: 20,
              right: 20,
              bottom: 20,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xFF1CCC39),
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFF50E92A),
                            )),
                            labelText: "fullname",
                            labelStyle: TextStyle(
                                color: Color(0xFF000000), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFF000000),
                            ),
                          )),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFF000000),
                            )),
                            labelText: "date",
                            labelStyle: TextStyle(
                                color: Color(0xFF000000), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.date_range,
                              color: Color(0xFF000000),
                            ),
                          )),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFF080A07),
                            )),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Color(0xFF010201), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color(0xFF040503),
                            ),
                          )),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFF000000),
                            )),
                            labelText: "password",
                            labelStyle: TextStyle(
                                color: Color(0xFF000000), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF040504),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFF000000),
                            )),
                            labelText: "confrm Password",
                            labelStyle: TextStyle(
                                color: Color(0xFF000000), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF060706),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('home');
                          },
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF070706)),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
