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
  String txt;
  bool added=true;
  fun()
  {
    setState(() {
      fav=!fav;
    });
  }
  fun1()
  {
    setState(() {
      press=!press;
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
  bool press=false;
  int num=0;

  addnum()
  {
    setState(() {
      num++;
    });
  }
  subnum()
  {
    setState(() {
      num--;
      if(num<0)
      {
        press=false;
        num=0;
      }
    });
  }
  int last=10;
  List<String> img=['assets/1.jpg','assets/2.jpg','assets/3.jpg','assets/4.jpg','assets/5.jpg','assets/6.jpg','assets/7.jpg','assets/8.jpg','assets/9.jpg','assets/10.jpg','assets/11.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
        appBar: SearchBar(

        ),


      body:SingleChildScrollView(
        child: GridView.count(crossAxisCount: 2,
             scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              primary: true,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: .75,
            children:List.generate(11, (index){
              return _buildCard('$index', 'Rs.399', img[index],
true, true, context);
//              Padding(padding: EdgeInsets.only(bottom: 150));
            })


        ),
      )
      );

  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Container(
      height: 10,
      child: Padding(

          padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
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
                width: 100,
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
                            height: 95.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.contain)))),
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15,),
                          Container(
                            alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10),
                            child: Text('fish1',
                                style: TextStyle(
                                    color: Color(0xFFCC8053),
                                    fontFamily: 'Varela',
                                    fontSize: 14.0)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(price,
                                  style: TextStyle(
                                      color: Color(0xFF575E67),
                                      fontFamily: 'Varela',
                                      fontSize: 14.0)),
                              Container(

                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                child: press?
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.deepOrangeAccent
                                    )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        width: 25,
                                        height: 25,
//                                    color: Colors.deepOrangeAccent,
                                        child: GestureDetector(child: Icon(Icons.remove,color: Colors.deepOrangeAccent,size: 20,),onTap: (){
                                          subnum();
                                        },),
                                      ),
                                      if(num<10)...[
                                        Container(
                                            padding: EdgeInsets.only(left: 5,right:5,bottom: 3),
                                            alignment: Alignment.topLeft,
                                            width: 14,
                                            height: 21,
//                                      color: Colors.deepOrangeAccent,
                                            child: Text('$num', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,fontSize: 18),))
                                      ],
                                      if(num>=10)...[
                                        Container(
                                            padding: EdgeInsets.only(top: 10,left: 5,right:5),
                                            width: 25,
                                            height: 30,
//                                      color: Colors.deepOrangeAccent,
                                            child: Text('$num', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,fontSize: 15),))
      ],

                                      Container(
                                        width: 25,
                                        height: 25,
                                          padding:EdgeInsets.only(left: 3) ,
//                                    color:Colors.deepOrangeAccent,
                                        child: GestureDetector(child: Icon(Icons.add,color:Colors.deepOrangeAccent,size: 20),
                                          onTap: (){
                                            addnum();
                                          },),
                                      ),
                                    ],
                                  ),
                                )
                                    :Container(
                                  width: 75,
                                  height: 28,
                                  child: FlatButton(
                                    onPressed: () {
                                      fun1();
                                    },
                                    color: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],

                          ),

                        ],
                      ),
                    )

                  ]
                  )))),
    );
  }
  Widget SearchBar(){
    Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
        ),
        onChanged: (input){
          input=input.toLowerCase();
          setState(() {

          });
        },
      ),
    );
}


}

//ListView.builder(itemCount: 3,itemBuilder: (BuildContext context,int index)=>Container(
//Column(
//
//children: <Widget>[
//
//SizedBox(height: 12.0),
//Container(
//padding: EdgeInsets.only(right: 15.0),
//width: MediaQuery.of(context).size.width - 30.0,
//height: MediaQuery.of(context).size.height - 50.0,
//child: GridView.count(
//crossAxisCount: 2,
//primary: false,
//crossAxisSpacing: 8.0,
//mainAxisSpacing: 10.0,
//childAspectRatio: .75,
//children: <Widget>[
//_buildCard('name', 'Rs.399', img[index],
//true, false, context),
//_buildCard('name', 'Rs.399', img[index+1],
//true, false, context),
//
//
//],
//)),
//SizedBox(height: 15.0),
//
//
//],
//),
//),
//                  Padding(
//                      padding: EdgeInsets.only(bottom: 5,top: 5),
//                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
//                  Padding(
//                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                      child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                          children: [
//                            if (!added) ...[
//                              GestureDetector(
//                                child: Icon(Icons.shopping_cart,
//                                    color: Color(0xFFD17E50), size: 20.0,),
//                              onTap: (){
//                                  cartfun();
//                                  print(added);
//                              },
//
//                              ),
//                              GestureDetector(
//                                child: Text('Add to cart',
//                                    style: TextStyle(
//                                        fontFamily: 'Varela',
//                                        color: Color(0xFFD17E50),
//                                        fontSize: 14.0,fontWeight: FontWeight.bold)),
//                             onTap: (){
//
//                             },
//                              )
//                            ],
//                            Padding(padding: EdgeInsets.only(top: 20,bottom: 20)),
//                            if (added) ...[
//                              GestureDetector(
//                                child: Icon(Icons.remove_shopping_cart,
//                                  color: Color(0xFFD17E50), size: 22.0,),
//                                onTap: (){
//                                  cartfun();
//                                  print(added);
//                                },
//
//                              ),
//
//                              GestureDetector(
//                                child: Text('Remove from cart',
//                                    style: TextStyle(
//                                        fontFamily: 'Varela',
//                                        color: Color(0xFFD17E50),
//                                        fontSize: 12.0,fontWeight: FontWeight.bold)),
//                              onTap: (){},)
//                            ]
//
//                          ]
//
//                      ))
