import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                              color: Color(0xFF546657),
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
                              color: Color(0xFF546657),
                            )),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Color(0xFF546657), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color(0xFF546657),
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
                              color: Color(0xFF546657),
                            )),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Color(0xFF546657), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF546657),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF546657)),
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
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                          child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('CHNG');
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              color: Color(0xff96c3af),
                              fontSize: 14,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold),
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
