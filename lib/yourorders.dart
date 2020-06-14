import 'package:flutter/material.dart';
import 'main.dart';
import 'cookie_detail.dart';
import 'orders.dart';
class YourOrders extends StatefulWidget {
  @override
  _YourOrdersState createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  bool press=false;
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
        title: Text('Your Orders',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => (Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Orders()),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                               Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10,),
                                  Row(
                                     children: <Widget>[

                                       SizedBox(width: 20,),
                                       Text(
                                         'Delivered Date:-',
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.w400),
                                       ),
                                       SizedBox(width: 30,),
                                       Text('12/3/12'),


                                     ],
                                  ),

                                  SizedBox(height: 10,),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(width: 10,),
                                      Text(
                                        'Delivered Address:-',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),

                                      SizedBox(width: 20,),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            '38,Abcd street',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text(
                                            'Ahasdg,chennai-64120',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),

                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(width: 30,),
                                      Text('Total Amount'),
                                      SizedBox(width: 50,),
                                      Text('Rs.123'),

                                    ],
                                  )
                                ],

                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ))),
    );
  }
}
