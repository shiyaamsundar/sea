import 'package:flutter/material.dart';
class Editaddress extends StatefulWidget {
  String doorno,add1,add2,pin,city,state;
  Editaddress({this.doorno,this.add1,this.add2,this.pin,this.city,this.state});

  @override
  _EditaddressState createState() => _EditaddressState();
}

class _EditaddressState extends State<Editaddress> {
  String newdoorno,newadd1,newadd2,newpin,newcity,newstate;

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
                context);
          },
        ),
        title: Text('Add New Address',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: ListView(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'Your door no/plat no';
                    },

                    decoration: InputDecoration(
                      labelText: 'Door',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => newdoorno= input,
                    onChanged: (value){
                      setState(() {
                        newdoorno=value;
                      });
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'Address Line 1';
                    },

                    decoration: InputDecoration(
                      labelText: 'Address Line1',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) =>newadd1= input,
                    onChanged: (value){
                      setState(() {
                        newadd1=value;
                      });
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'Address Line2';
                    },

                    decoration: InputDecoration(
                      labelText: 'Address Line 2',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => newadd2= input,
                    onChanged: (value){
                      setState(() {
                        newadd2=value;
                      });
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'Pincode';
                    },

                    decoration: InputDecoration(
                      labelText: 'Pincode',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => newpin= input,
                    onChanged: (value){
                      setState(() {
                        newpin=value;
                      });
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'City';
                    },
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => newcity= input,
                    onChanged: (value){
                      setState(() {
                        newcity=value;
                      });
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    validator: (String value) {
                      return 'State';
                    },
                    decoration: InputDecoration(
                      labelText: 'State',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => newstate= input,
                    onChanged: (value){
                      setState(() {
                        newstate=value;
                      });
                    },
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                    color: Colors.deepOrange,
                    child: Text('Save Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
                    onPressed: (){
                      Navigator.pop(
                          context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
