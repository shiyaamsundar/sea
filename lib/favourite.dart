import 'package:flutter/material.dart';
import 'main.dart';
import 'cookie_detail.dart';
class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool fav=false;
  List<String> img=['assets/1.jpg','assets/2.jpg','assets/3.jpg','assets/4.jpg','assets/5.jpg','assets/6.jpg','assets/7.jpg','assets/8.jpg','assets/9.jpg','assets/10.jpg','assets/11.jpg'];
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
        title: Text('Favourite',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: SingleChildScrollView(
        child: GridView.count(crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            primary: true,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: .90,
            children: List.generate(11, (index) {
              return _buildCard('$index', 'Rs.399', img[index],
                  true, true, context);
//              Padding(padding: EdgeInsets.only(bottom: 150));
            })


        ),
      ),
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
                    MaterialPageRoute(builder: (context) =>
                        CookieDetail(
                          assetPath: imgPath,
                          cookiename: name,
                          cookieprice: price,
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
                                isFavorite
                                    ? GestureDetector(
                                  child: Icon(Icons.favorite, color: Color(
                                      0xFFEF7532)), onTap: () {

                                },)
                                    : GestureDetector(
                                  child: Icon(Icons.favorite_border,
                                    color: Color(0xFFEF7532),),
                                  onTap: () {

                                  },
                                )
                              ])),
                      Hero(
                          tag: imgPath,
                          child: Container(
                              height: 95.0,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgPath),
                                      fit: BoxFit.contain)))),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          SizedBox(height: 15,),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 10),
                          child: Text('fish1',
                              style: TextStyle(
                                  color: Color(0xFFCC8053),
                                  fontFamily: 'Varela',
                                  fontSize: 14.0)),
                        ),
                        SizedBox(height: 8,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                            Text(price,
                            style: TextStyle(
                                color: Color(0xFF575E67),
                                fontFamily: 'Varela',
                                fontSize: 14.0)),
                         ],
                      ),

                    ]
                    ))
                ],
            ),
    )
    )
    )
    );
  }
}
