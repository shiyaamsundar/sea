
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  final blueCol = Color(0XFF5e92f3);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackgroundTopCircle(context),
          buildBackgroundBottomCircle(context),
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
                  children:[
                    Text("OTP AUTHENTICATION",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 120,),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOutBack,
                      height:140,
                      margin: EdgeInsets.only(top: 30),
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
                        child: buildOtpTextFieldSection(),
                      ),
                    ),
                    buildbottom(context),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
Column buildOtpTextFieldSection() {
  return Column(
    children: [
      buildTextField("OTP", "otp", false),
      SizedBox(
        height: 30,
      ),
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
          style: TextStyle(color:Colors.blue, fontSize: 12),
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


Container buildbottom(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        RaisedButton(
          color:Color(0XFF5e92f3),
          elevation: 10,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "SUBMIT",
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
      ],
    ),
  );
}

Positioned buildBackgroundBottomCircle(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height -
        MediaQuery.of(context).size.width,
    right: MediaQuery.of(context).size.width / 2,
    child: Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0XFF5e92f3).withOpacity(0.15),
          borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width,
          )),
    ),
  );
}

Positioned buildBackgroundTopCircle(BuildContext context) {
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
              color:Color(0XFF5e92f3),
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width,
              )),
        ),
      ),
    ),
  );
}
