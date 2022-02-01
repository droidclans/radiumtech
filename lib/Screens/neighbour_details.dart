
import 'package:flutter/material.dart';
import 'package:radium_tech/Screens/user_list.dart';
import 'package:radium_tech/myhome.dart';

class NeighbourDetails extends StatefulWidget {
  const NeighbourDetails({Key? key}) : super(key: key);

  @override
  _NeighbourDetailsState createState() => _NeighbourDetailsState();
}

class _NeighbourDetailsState extends State<NeighbourDetails> {
  final neighbouName = TextEditingController();
  final passController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  bool applicant = false;
  bool applicant1 = false;
  bool applicant2 = false;
  String message = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Neighbour Details'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              controller: neighbouName,
              validator: (value) {
                if(value == null) {
                  return 'Email cannot be empty';
                }
                return  null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration:  InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 1.0),
                ),
                labelText: "Name of Neighbour",
                labelStyle: TextStyle(color: Colors.green),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),

                ),

              ),

            ),
          ),
          SizedBox(height: 20.0),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              style: TextStyle(
                height: 5.0
              ),
              controller: neighbouName,
              validator: (value) {
                if(value == null) {
                  return 'Email cannot be empty';
                }
                return  null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration:  InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 1.0),
                ),
                labelText: "Name of Neighbour",
                labelStyle: TextStyle(color: Colors.green),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.0),
          Container(
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.green,


                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Applicant',
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
                      value: this.applicant,
                      onChanged: (value) {
                        setState(() {
                          this.applicant = value!;
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
                      value: this.applicant2,
                      onChanged: (value) {
                        setState(() {
                          this.applicant2 = value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      shape: CircleBorder(),
                      checkColor: Color(0xff6276B9),
                      activeColor: Color(0xff6276B9),
                      value: this.applicant1,
                      onChanged: (value) {
                        setState(() {
                          this.applicant1 = value!;
                        });
                      },
                    ),
                    Text('Refused'),
                  ],
                ),
              ],
            ),
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
                icon: Icon(Icons.arrow_back_ios,
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
           /*       showAlertDialog(BuildContext context) {

                    // set up the buttons
                    Widget cancelButton = TextButton(
                      child: Text("Cancel"),
                      onPressed:  () {},
                    );
                    Widget continueButton = TextButton(
                      child: Text("Continue"),
                      onPressed:  () {},
                    );

                    // set up the AlertDialog
                    AlertDialog alert = AlertDialog(
                      title: Text("AlertDialog"),
                      content: Text("Are you sure to submit?"),
                      actions: [
                        cancelButton,
                        continueButton,
                      ],
                    );

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  }*/
                },
                label: Text('Submit'),
                icon: Icon(Icons.navigate_next),



              ),
            ],
          ),

        ],
      ),
    );
  }
}
