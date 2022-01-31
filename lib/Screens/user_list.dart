
import 'package:flutter/material.dart';
import 'package:radium_tech/Components/user_card.dart';
import 'package:radium_tech/sign_in.dart';

import '../myhome.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[700],
        title: Text('Sameer ahmed khan'),
        actions: [
          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  LoginScreen(),
                ));
          }, child: Text('Logout',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
          ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[

              UserCard(),

              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),



            ],
          ),
        ),
      ),
    );
  }
}
