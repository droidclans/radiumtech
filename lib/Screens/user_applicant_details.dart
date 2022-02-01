import 'package:flutter/material.dart';

import '../myhome.dart';

class UserApplicantDetails extends StatefulWidget {
  const UserApplicantDetails({Key? key}) : super(key: key);

  @override
  _UserApplicantDetailsState createState() => _UserApplicantDetailsState();
}

class _UserApplicantDetailsState extends State<UserApplicantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[700],
        title: Text('Applicant Details')
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children:  <Widget>[
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Name of Applicant",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Father Name",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),

            SizedBox(height: 20.0),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "CNIC of Applicant",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),

            SizedBox(height: 20.0),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Date of Birth",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),

            SizedBox(height: 20.0),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Phone # (Res)",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Phone # (Work)",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width:350,
              height: 50.0,

              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                // controller: neighbouName,
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
                  labelText: "Cell Phone #",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

              ),
            ),





            SizedBox(height: 20.0),
            Container(
              width:350,


              alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                style: const TextStyle(

                  height: 7.0,

                ),
                // controller: neighbouName,
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
                  labelText: "Residence Adress",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),

                ),

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
                  label: Text('Submit'),
                  icon: Icon(Icons.navigate_next),



                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
