import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cookie_detail.dart';
import 'main.dart';
import 'address.dart';
import 'cookie_detail.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool press = true;
  int num = 0;

  fun() {
    setState(() {
      press = true;
    });
  }

  addnum() {
    setState(() {
      num++;
    });
  }

  subnum() {
    setState(() {
      num--;
      if (num < 0) {
        press = false;
        num = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
        title: Text('Cart ',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Expanded(child: ListView.builder(
                itemCount: 5, itemBuilder: (BuildContext context, int index) =>
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              width: 125,
                              height: 100,
                              child: Center(
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => CookieDetail(
                                          assetPath: 'assets/1.jpg',cookiename:'fishone',cookieprice: 'Rs.123'
                                      )),
                                    );
                                  },
                                  child: Container(

                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/1.jpg',),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                              ),
                            ),

                            Column(
                              children: <Widget>[
                                SizedBox(height: 25,),
                                Text('Fish one', style: TextStyle(
                                    fontWeight: FontWeight.w600),),
                                SizedBox(height: 5,),
                                Text('Rs. 399', style: TextStyle(
                                    fontWeight: FontWeight.w500),),
                                SizedBox(height: 10,),
                                Container(
                                      width: 70,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.deepOrangeAccent),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[

                                      Container(
                                        width: 25,
                                        height: 30,
                                        child: GestureDetector(
                                          onTap: (){
                                            subnum();
                                          },
                                          child: Icon(
                                            (Icons.remove),
                                            color: Colors.deepOrangeAccent,
                                            size: 20,),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                          padding: EdgeInsets.only(
                                            top: 5, left: 5, right: 5,bottom: 5),
                                          width: 17,
                                          height: 30,

                                          child: Text('$num', style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrangeAccent,
                                              fontSize: 18),)),
                                      Container(
                                        width: 25,
                                        height: 30,

                                        child: GestureDetector(
                                          onTap: (){
                                            addnum();
                                          },
                                          child: Icon((Icons.add),
                                              color: Colors.deepOrangeAccent,
                                              size: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.only(top: 50, right: 20),
                              child: Text('Rs.1233'),
                            ),

                          ],
                        ),
                        Divider(),
                      ],


                    ),
                  ),

              ),),

              Container(
                width: 500,
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 50,),
                        Text('Sub Total', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),),

                        Container(
                            padding: EdgeInsets.only(left: 150),
                            child: Text('Rs.12345', style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        SizedBox(width: 50,),
                        Text('Delivery', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),),
                        SizedBox(width: 160,),
                        Text('Rs.30', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),)
                      ],
                    ),
                    Divider(color: Colors.grey, height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 50,),
                        Text('Total', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),),
                        SizedBox(width: 170,),
                        Text('Rs.14870', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
              ),

              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),

                color: Colors.deepOrange,
                child: Text('Proceed', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Address()),
                  );
                },
              ),
              SizedBox(height: 10,)

            ],
          )
      ),

    );
  }
}
