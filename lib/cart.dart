import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cookie_detail.dart';
import 'main.dart';
import 'address.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool press=true;
  int num=0;
  fun()
  {
    setState(() {
      press=true;
    });
  }
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
        child:Column(
          children: <Widget>[
            Expanded(child: ListView.builder(itemCount: 5,itemBuilder:(BuildContext context,int index)=>
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height:5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 15,left: 10),
                            width: 125,
                            height: 100,
                            child: Center(
                              child: Container(

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/1.jpg',),fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                            ),
                          ),

                          Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
                              Text('Fish one',style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(height: 5,),
                              Text('Rs. 399',style: TextStyle(fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Container(
                                    width: 25,
                                    height: 25,
                                    color: Colors.deepOrangeAccent,
//                                    decoration: BoxDecoration(
//                                      color: Colors.deepOrangeAccent,
//                                      borderRadius: BorderRadius.circular(4),
//
//                                    ),
                                    child: GestureDetector(
                                      child: Icon((Icons.remove_circle_outline),
                                        color: Colors.white, size: 18,),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    padding: EdgeInsets.only(top: 3,left: 5,right:5),
                                    width: 17,
                                      height: 25,
                                      color: Colors.deepOrangeAccent,
                                      child: Text('1', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    color: Colors.deepOrangeAccent,
                                    child: GestureDetector(
                                      child: Icon((Icons.add_circle_outline),
                                        color: Colors.white, size: 18,),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.only(top: 50,right: 20),
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
                      Text('Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(width: 150),
                      Text('Rs.12345',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: <Widget>[
                      SizedBox(width: 50,),
                      Text('Delivery',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(width: 128,),
                      Text('Rs.30',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  Divider(color: Colors.grey,height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 50,),
                      Text('Sub Total',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(width: 118,),
                      Text('Rs.14870',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
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
              child: Text('Proceed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
              onPressed: (){
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



  }}
