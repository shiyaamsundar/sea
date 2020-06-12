import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'cookie_detail.dart';
import 'cart.dart';
import 'bottom_bar.dart';

class CookiePage extends StatefulWidget {
  @override
  _CookiePageState createState() => _CookiePageState();
}

class _CookiePageState extends State<CookiePage> {

  bool fav=false;
  bool added=true;
  fun()
  {
    setState(() {
      fav=!fav;
    });
  }
  cartfun()
  {
    setState(() {
      if(added==true)
        {
          added=false;
        }
      else{
        added=true;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body:
         ListView(
           scrollDirection: Axis.horizontal,
          children: <Widget>[

            SizedBox(height: 12.0),
            Container(
                padding: EdgeInsets.only(right: 15.0),
                width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: .75,
                  children: <Widget>[
                    _buildCard('fish 1', 'Rs.399', 'assets/1.jpg',
                        true, false, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/2.jpg',
                        false, true, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/3.jpg',
                        false, true, context),
                    _buildCard('fish 1', 'Rs.399', 'assets/4.jpg',
                        true, false, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/5.jpg',
                        false, true, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/6.jpg',
                        false, true, context),
                    _buildCard('fish 1', 'Rs.399', 'assets/7.jpg',
                        true, false, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/8.jpg',
                        false, true, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/9.jpg',
                        false, true, context),
                    _buildCard('fish 1', 'Rs.399', 'assets/10.jpg',
                        true, false, context),
                    _buildCard('fish 123', 'Rs.399', 'assets/11.jpg',
                        false, true, context),


                  ],
                )),
            SizedBox(height: 15.0),


          ],



      ),


    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(

        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CookieDetail(
                  assetPath: imgPath,cookiename: name,cookieprice: price,
                )),
              );
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            fav
                                ? GestureDetector(child: Icon(Icons.favorite, color: Color(0xFFEF7532)),onTap: (){
                                  fun();
                            },)
                                : GestureDetector(
                                  child: Icon(Icons.favorite_border,
                                      color: Color(0xFFEF7532),),
                            onTap: (){
                                    fun();
                            },
                            )
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 82.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 5.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5,top: 5),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              GestureDetector(
                                child: Icon(Icons.shopping_cart,
                                    color: Color(0xFFD17E50), size: 20.0,),
                              onTap: (){
                                  cartfun();
                                  print(added);
                              },

                              ),
                              GestureDetector(
                                child: Text('Add to cart',
                                    style: TextStyle(
                                        fontFamily: 'Varela',
                                        color: Color(0xFFD17E50),
                                        fontSize: 14.0,fontWeight: FontWeight.bold)),
                             onTap: (){

                             },
                              )
                            ],
                            if (added) ...[
                              GestureDetector(
                                child: Icon(Icons.remove_shopping_cart,
                                  color: Color(0xFFD17E50), size: 20.0,),
                                onTap: (){
                                  cartfun();
                                  print(added);
                                },

                              ),
                              GestureDetector(
                                child: Text('Remove from cart',
                                    style: TextStyle(
                                        fontFamily: 'Varela',
                                        color: Color(0xFFD17E50),
                                        fontSize: 12.0,fontWeight: FontWeight.bold)),
                              onTap: (){},)
                            ]
                          ]
                      ))
                ]))));
  }
}
