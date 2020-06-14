import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seafood/payment/razor.dart';
import 'addnewaddress.dart';
import 'editaddress.dart';
class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool cardselected=false,tap=false;
  List<bool> _selected = List.generate(5, (i) => false);
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Please select any of the address to proceed"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  setcolor(int index){
    setState(() {
      for(int i=0;i<5;i++)
      {
        if(i==index)
        {
          _selected[i]=!_selected[i];
        }
        else{
          _selected[i]=false;
        }
      }
      if(_selected[index]==true)
      {
        tap=true;
      }
      else{
        tap=false;
      }


    });
      }

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
            Navigator.pop(context);
          },
        ),
        title: Text('Select Address',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(itemCount: 5,itemBuilder: (BuildContext context,int index)=>
                  GestureDetector(
                    onTap: (){
                      setcolor(index);
                    },
                child: Container(

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                    child: Column(
                      children: <Widget>[
                        Card(
                          color:_selected[index]?Colors.grey.withOpacity(.1):Colors.white,
                          child: GestureDetector(
                            onTap: (){setcolor(index);
                            },
                          child: Container(
                            width: 600,
                            height: 100,
                            child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 15,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(width:30,),
                                          Text('38/11'),
                                          SizedBox(width: 10,),
                                          Text(',   Abcd Efgh Street'),
                                          SizedBox(width: 130,),
                                          GestureDetector(
                                              child: Icon(Icons.edit_location,size: 20,color: Colors.deepOrangeAccent.withOpacity(.8),),
                                            onTap: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Editaddress(

                                                )),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(width: 30,),
                                        Text('Abcdefgt'),
                                        SizedBox(width: 10,),
                                        Text(',  pqwe'),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(width: 30,),
                                        Text('987456'),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                        ),

                        )
                      ],
                    ),
                  ),
                ),
              )
              ),
            ),
            Container(
              width: 500,
              height: 130,
              child:Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    child: Row(

                      children: <Widget>[
                      SizedBox(height: 10,width: 90,),
                        FlatButton.icon(onPressed: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Addaddress()),
                            );

                        }, icon: Icon(Icons.home,color: Colors.deepOrangeAccent.withOpacity(.8),), label: Text('Add New Address'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  tap?
                  MaterialButton(

                    height: 45,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                    color: Colors.deepOrange,
                    child: Text('Proceed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pay()),
                      );
                    },
                  ):MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                    color: Colors.grey,
                    child: Text('Proceed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
                    onPressed: (){
                      showAlertDialog(context);
                    },
                  ),

                ],
              )
            )

          ],
        ),
      ),
    );
  }
}
