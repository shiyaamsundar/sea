import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'verifyotp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final blueColor = Color(0XFF5e92f3);
  final yellowColor = Color(0XFFfdd835);

  TapGestureRecognizer _tapGestureRecognizer;
  bool _showSignIn,verified=false;

  @override
  void initState() {
    super.initState();
    _showSignIn = true;
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          _showSignIn = !_showSignIn;
          print("Hello");
        });
      };
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            buildBackgroundTopCircle(),
            buildBackgroundBottomCircle(),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  padding:
                  EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 40),
                  child: Column(
                    children: [
                      Text(
                        _showSignIn ? "SIGN IN" : "CREATE ACCOUNT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 120,),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOutBack,
                        height: _showSignIn ? 240 : 320,
                        margin: EdgeInsets.only(top: _showSignIn ? 40 : 30),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: SingleChildScrollView(
                          child: _showSignIn
                              ? buildSignInTextFieldSection()
                              : buildSignUpTextFieldSection(),
                        ),
                      ),
                      _showSignIn
                          ? buildSingInBottomSection()
                          : buildSingUpBottomSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Container buildSingInBottomSection() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print("Forget Password");
            },
            child: Text(
              "Forget Password ?",
              style: TextStyle(
                color: blueColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          RaisedButton(
            color: blueColor,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right,
                  color: blueColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "Create an Account",
                      recognizer: _tapGestureRecognizer,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          )
        ],
      ),
    );
  }

  Container buildSingUpBottomSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          RaisedButton(
            color: blueColor,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Otp()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  verified?"SUBMIT":"CONFIRM",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          RichText(
            text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "Sing in",
                      recognizer: _tapGestureRecognizer,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          )
        ],
      ),
    );
  }

  Column buildSignInTextFieldSection() {
    return Column(
      children: [
        buildTextField("EMAIL ADDRESS", "Email", false),
        SizedBox(
          height: 30,
        ),
        buildTextField("PASSWORD", "Password", true),
      ],
    );
  }


  Column buildSignUpTextFieldSection() {
    return Column(
      children: [
        buildTextField("USERNAME", "UserName", false),
        SizedBox(
          height: 20,
        ),
        buildTextField("EMAIL ADDRESS", "Email", false),
        SizedBox(
          height: 20,
        ),
        buildTextField("MOBILE NUMBER", "PhoneNumber", false),
//        SizedBox(
//          height: 20,
//        ),
       // buildTextField("PASSWORD", "Passwword", true),
      ],
    );
  }

  Container buildTextField(
      String labelText, String placeholder, bool isPassword) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(color: blueColor, fontSize: 12),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: placeholder,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]),
                ),
              ))
        ],
      ),
    );
  }



  Positioned buildBackgroundBottomCircle() {
    return Positioned(
      top: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.width,
      right: MediaQuery.of(context).size.width / 2,
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: blueColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width,
            )),
      ),
    );
  }

  Positioned buildBackgroundTopCircle() {
    return Positioned(
      top: 0,
      child: Transform.translate(
        offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
        child: Transform.scale(
          scale: 1.35,
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                )),
          ),
        ),
      ),
    );
  }
}