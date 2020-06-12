import 'package:flutter/material.dart';
import 'main.dart';
import 'cookie_detail.dart';

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
                child: Card(
                  elevation: 5,
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
                            Container(
                              width: 70,
                              height: 70,
                              child: GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  foregroundColor: Colors.black,
                                  backgroundImage: AssetImage('assets/1.jpg'),
                                ),
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CookieDetail(
                                      assetPath: 'assets/1.jpg',cookiename: 'Fishone',cookieprice: '123',
                                    )),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 15,),
                                Text(
                                  'FishOne',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'FishOne',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: press?
                              Row(
                                children: <Widget>[
                                  GestureDetector(child: Icon(Icons.remove_circle_outline,color: Colors.deepOrange,),onTap: (){
                                    subnum();
                                  },),
                                  SizedBox(width: 5,),
                                  Text('$num'),
                                  SizedBox(width: 5,),
                                  GestureDetector(child: Icon(Icons.add_circle_outline,color:Colors.deepOrange,),
                                  onTap: (){
                                    addnum();
                                  },),
                                ],
                              )
                              :FlatButton(
                            onPressed: () {
                              fun();
                            },
                            color: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
