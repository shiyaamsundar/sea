import 'package:flutter/material.dart';
import 'user.dart';
import 'yourorders.dart';
import 'favourite.dart';
import 'cart.dart';
import 'main.dart';
import 'userdetails/profile.dart';
class BottomBar extends StatelessWidget {
  String current="Home";
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  GestureDetector(
                      child: Icon(Icons.home, color:  Color(0xFF676E79),),onTap:(){}),
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) =>MyHomePage()),
//                    );},),
                  GestureDetector(child: Icon(Icons.shopping_basket, color: Color(0xFF676E79)),onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>YourOrders()),
                    );},),

                ],
              )
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   GestureDetector(child: Icon(Icons.favorite,color:Color(0xFF676E79) ,),onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Favourite()),
                     );},),

                  GestureDetector(child: Icon(Icons.person, color: Color(0xFF676E79)),onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                    } ,)
                ],
              )
            ),
          ]
        )
      )
    );
  }
}
