import 'package:boom/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: MyLogin(),
    );
  }
}

class MyLogin extends StatefulWidget {
  MyLogin({Key key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  Icon myicon = Icon(
    Icons.visibility,
    color: Colors.blueGrey,
  );
  bool state = false;
  void setIconChange() {
    if (state == false) {
      setState(() {
        myicon = Icon(Icons.visibility_off, color: Colors.blueGrey);
        state = true;
      });
    } else {
      setState(() {
        myicon = Icon(Icons.visibility, color: Colors.blueGrey);
        state = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 10),
                child: Text("Login",
                    style: GoogleFonts.kalam(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 35))),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text("Login to Your Account",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceCodePro(
                        textStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w700,
                            fontSize: 18))),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email Adress",
                          hintText: "your Email",
                          labelStyle: TextStyle(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide:
                                BorderSide(color: Colors.blueGrey, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueGrey, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border:
                                Border.all(color: Colors.blueGrey, width: 2.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextField(
                                obscureText: state,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "your Password",
                                    labelStyle: TextStyle(),
                                    border: InputBorder.none),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: InkWell(
                                    onTap: () {
                                      setIconChange();
                                    },
                                    child: myicon))
                          ],
                        )),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  debugPrint("Signup");
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
              Container(
                  margin: EdgeInsets.only(top: 10, left: 100),
                  child: Row(
                    children: [
                      Text(
                        "Dont Have an Acount ?",
                        style: GoogleFonts.kalam(
                            textStyle: TextStyle(fontSize: 17)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.kalam(
                              textStyle: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  )),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
