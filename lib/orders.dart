import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        title: Text('Order No: abcdefdh',
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

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                        Text('Quantity:    3'),

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
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Divider(color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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


            ],
          )
      ),
    );
  }
}
