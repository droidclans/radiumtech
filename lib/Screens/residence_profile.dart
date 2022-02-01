
import 'package:flutter/material.dart';
import 'package:radium_tech/Components/dropdown_button.dart';

import '../myhome.dart';

class ResidenceProfile extends StatefulWidget {

  @override
  _ResidenceProfileState createState() => _ResidenceProfileState();
}

class _ResidenceProfileState extends State<ResidenceProfile> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;
  var selected;
  int myf = 1;
  int myg = 2;
  int myh = 3;
  int myi = 4;
  int myj = 5;
  int myk = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title:  Text('Residence Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              children:  <Widget>[
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.green


                 )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       const Text('Is Applicant Available:',
                       style: TextStyle(
                         color: Colors.green
                       ),
                       ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value1,
                            onChanged: (value) {
                              setState(() {
                                this.value1 = value!;
                              });
                            },
                          ),
                          Text('Yes'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value2,
                            onChanged: (value) {
                              setState(() {
                                this.value2 = value!;
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.green


                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Is Address Correct:',
                        style: TextStyle(
                            color: Colors.green
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value3,
                            onChanged: (value) {
                              setState(() {
                                this.value3 = value!;
                              });
                            },
                          ),
                          Text('Yes'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value4,
                            onChanged: (value) {
                              setState(() {
                                this.value4 = value!;
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Colors.green,


                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text('Does Applicant Live',
                            style: TextStyle(
                                color: Colors.green
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 90.0),
                            child: Text('Here:',
                              style: TextStyle(
                                  color: Colors.green
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value5,
                            onChanged: (value) {
                              setState(() {
                                this.value5 = value!;
                              });
                            },
                          ),
                          Text('Yes'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            checkColor: Color(0xff6276B9),
                            activeColor: Color(0xff6276B9),
                            value: this.value6,
                            onChanged: (value) {
                              setState(() {
                                this.value6 = value!;
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.green


                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Name Plate affixed at Residence:',
                        style: TextStyle(
                            color: Colors.green
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: const Color(0xff6276B9),
                            activeColor: const Color(0xff6276B9),
                            value: this.value7,
                            onChanged: (value) {
                              setState(() {
                                this.value7 = value!;
                              });
                            },
                          ),
                          Text('?'),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                      ),

                    ),
                    Positioned(
                        left: 30.0,
                        top: 12.0,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Colors.white,
                          child: const Text(
                            'Residence is',
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),

                        ),
                    ),
                    const Positioned(
                      left: 40.0,
                      top: 30.0,
                      child: DropDownDesign(),

                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                      ),

                    ),
                    Positioned(
                      left: 30.0,
                      top: 12.0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.white,
                        child: const Text(
                          'Residence Utilization',
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),

                      ),
                    ),
                    const Positioned(
                      left: 40.0,
                      top: 30.0,
                      child: DropDownDesign(),

                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                      ),

                    ),
                    Positioned(
                      left: 30.0,
                      top: 12.0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.white,
                        child: const Text(
                          'Residence Area',
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),

                      ),
                    ),
                    const Positioned(
                      left: 40.0,
                      top: 30.0,
                      child: DropDownDesign(),

                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                      ),

                    ),
                    Positioned(
                      left: 30.0,
                      top: 12.0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.white,
                        child: const Text(
                          'Residence Area Unit',
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),

                      ),
                    ),
                    const Positioned(
                      left: 40.0,
                      top: 30.0,
                      child: DropDownDesign(),

                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton.icon(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>  MyHomePage(),
                            ));
                      },
                      label: const Text('Back To List'),
                      icon: const Icon(Icons.arrow_back_ios,
                        size: 15,
                      ),



                    ),
                    FlatButton.icon(
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor:
                                Color(0xff314398),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(
                                        Radius.circular(
                                            10.0))),
                                content: const Text('Are you Sure to Submit?'),
                                actions: <Widget>[
                                  FlatButton(
                                    color: Colors.red,
                                    textColor: Colors.white,
                                    child: const Text('CANCEL'),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                  ),
                                  FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    child: Text('OK'),
                                    onPressed: () {
                                      setState(() {

                                        Navigator.pop(context);
                                      });
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      label: Text('Save'),
                      icon: Icon(Icons.navigate_next),



                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
