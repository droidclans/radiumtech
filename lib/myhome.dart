
import 'package:flutter/material.dart';
import 'package:radium_tech/Screens/neighbour_details.dart';
import 'package:radium_tech/Screens/residence_profile.dart';
import 'package:radium_tech/sign_in.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Survey'),
      ),
      body: Padding(
        padding:  EdgeInsets.only(bottom: 100.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.black,
                    onPressed: (){

                    },
                    icon: const Icon(Icons.computer,
                      color: Colors.white,
                    ),
                    label: const Text('Get Data From Sever',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.blueAccent,
                    onPressed: (){
                    },
                    icon: const Icon(Icons.contact_page,
                      color: Colors.white,

                    ),
                    label: const Text('Applicant Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.redAccent,
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                             ResidenceProfile(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.perm_identity_sharp,
                      color: Colors.white,
                    ),
                    label: const Text('Residence Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      width: 150,
                      height: 50,
                      child: FlatButton.icon(
                        shape: RoundedRectangleBorder(side: const BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(50)),
                        color: Colors.blueGrey,
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                NeighbourDetails(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.perm_identity_sharp,
                          color: Colors.white,
                        ),
                        label: const Text('Neighbour 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: FlatButton.icon(
                        shape: RoundedRectangleBorder(side: const BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(50)),
                        color: Colors.blueGrey,
                        onPressed: (){
                        },
                        icon: const Icon(Icons.perm_identity_sharp,
                          color: Colors.white,
                        ),
                        label: const Text('Neighbour 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.black,
                    onPressed: (){
                    },
                    icon: const Icon(Icons.camera_alt,
                      color: Colors.white,
                    ),
                    label: const Text('Take Photograph',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.blueAccent,
                    onPressed: (){
                    },
                    icon: const Icon(Icons.verified,
                      color: Colors.white,
                    ),
                    label: const Text('Verification Outcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.redAccent,
                    onPressed: (){
                    },
                    icon: const Icon(Icons.cancel,
                      color: Colors.white,
                    ),
                    label: const Text('Cancel Image Uploading',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: FlatButton.icon(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                    color: Colors.purple,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>  LoginScreen(),
                          ));
                    },
                    icon: const Icon(Icons.cancel,
                      color: Colors.white,
                    ),
                    label: const Text('Log Out',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

