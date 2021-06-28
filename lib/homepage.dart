import 'package:boom/login.dart';
import 'package:boom/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 10),
                child: Text("Welcome",
                    style: GoogleFonts.sourceCodePro(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 35))),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                    "Lorem ipsum, or lipsum dada dadada as it is sometimes known, is dummy text.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceCodePro(
                        textStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w700,
                            fontSize: 18))),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/welcome.png"))),
              ),
              InkWell(
                hoverColor: Colors.white,
                focusColor: Colors.white,
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 47, right: 36, top: 30),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.grey),
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 47, right: 36, top: 30),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.blueAccent[200]),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
