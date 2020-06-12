import 'dart:math';

import 'package:flutter/material.dart';
class Addaddress extends StatefulWidget {
  @override
  _AddaddressState createState() => _AddaddressState();
}

class _AddaddressState extends State<Addaddress> {
  String doorno,add1,add2,pin,city,state;
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
                      labelText: 'Door/plat No',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onSaved: (input) => doorno= input,
                    onChanged: (value){
                      setState(() {
                        doorno=value;
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
                    onSaved: (input) => add1= input,
                    onChanged: (value){
                      setState(() {
                        add1=value;
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
                    onSaved: (input) => add2= input,
                    onChanged: (value){
                      setState(() {
                        add2=value;
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
                    onSaved: (input) => pin= input,
                    onChanged: (value){
                      setState(() {
                        pin=value;
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
                    onSaved: (input) => city= input,
                    onChanged: (value){
                      setState(() {
                        city=value;
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
                    onSaved: (input) => state= input,
                    onChanged: (value){
                      setState(() {
                        state=value;
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
