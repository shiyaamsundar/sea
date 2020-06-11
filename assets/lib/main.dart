import 'package:flutter/material.dart';

void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null,color: Colors.blueGrey,),
        title: Text('your orders',style: TextStyle(fontSize: 20),),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.notifications_none), onPressed: null,color: Colors.blueGrey,),
      ],
      ),
      body:ListView(
      padding: EdgeInsets.only(left: 20),
      children: <Widget>[
        Text('Items',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.only(right: 15),

          child: GridView.count(crossAxisCount: 2,primary: false,crossAxisSpacing: 10,mainAxisSpacing: 15,childAspectRatio: 0.8,
          children: <Widget>[
//            _buildcard('fish', '\$10', 'assets/1.jpg', false, true, context),
//            _buildcard('fish', '\$10','assets/1.jpg', false, true, context),
//            _buildcard('fish', '\$10', 'assets/2.jpg', false, true, context),

          ],),
        ),
        SizedBox(height: 10,)
      ],
      ),
    );
  }
//  Widget _buildcard(String name,String price,String img,bool added,bool isfav)
//  {
//    return Padding(
//      padding: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
//      child: InkWell(
//        onTap: (){},
//        child: Container(
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(15),
//            boxShadow: [
//              BoxShadow(
//                color: Colors.grey.withOpacity(0.3),
//                spreadRadius: 3,
//                blurRadius: 5,
//              )
//            ],
//            color: Colors.white,
//
//          ),
//          child: Column(
//            children: <Widget>[
//              Padding(
//                padding: EdgeInsets.all(5),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children:[
//                    isfav?IconButton(icon: Icon(Icons.favorite), color: Colors.blue,onPressed: null):
//                    IconButton(icon: Icon(Icons.favorite_border), color: Colors.blue,onPressed: null)
//                  ],
//                ),
//              ),
//              Hero(tag: img, child: Container(
//                height: 75,
//                width: 75,
//                decoration: BoxDecoration(
//                  image:DecorationImage(
//                    image: AssetImage(img),
//                    fit: BoxFit.contain
//                  )
//                ),
//
//              )
//              ),
//              SizedBox(height:7,),
//              Text(price,style: TextStyle(color: Colors.indigo,fontSize: 14),),
//              Text(name,style: TextStyle(color: Colors.indigo,fontSize: 14),),
//              Padding(padding: EdgeInsets.all(8),
//              child: Container(
//                color: Colors.grey,
//                height: 1,
//              ),),
//              Padding(
//                padding: EdgeInsets.only(left: 5,right: 5),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children:[
//                    if(!added)...[
//                      Icon(Icons.add_shopping_cart,color:Colors.orange,size: 10,),
//                      Text('Add to basket',style: TextStyle(
//                        fontSize: 12,
//                      ),),
//                      Icon(Icons.add_circle_outline,color: Colors.orange,size: 10,)
//
//
//
//                    ]
//                  ],
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//
//  }
}
