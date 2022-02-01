
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:radium_tech/Apis/GetApis/listing_get.dart';
import 'package:radium_tech/Components/user_card.dart';
import 'package:radium_tech/Model/listing_model.dart';
import 'package:radium_tech/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../myhome.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
/*  void initState() {
    _loadUserData();
    super.initState();
  }*/

  _loadUserData() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user')!);

    if (user != null) {
      setState(() {});
    }
  }
  Future<Welcome>? userListing;
  @override
  void initState() {
    userListing = ApiMale().getList();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[700],
        title: Text('Sameer ahmed khan'),
        actions: [
          FlatButton(onPressed: (){
            logout();
          }, child: const Text('Logout',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
          ))
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Welcome>(
          future: userListing,
          builder:  (context,  snapshot)
          {
            if(snapshot.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                itemCount: snapshot.data!.data!.length,
                  itemBuilder:(context, index){
                    var listData = snapshot.data!.data![index];
                  return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => const MyHomePage(),
                                    ));
                              },
                              child: Container(
                                height: 100.0,

                                child: Card(
                                  color: Colors.green,
                                  child: ListTile(
                                    leading: Image.asset('assets/job-creation-512.png'),
                                    title:  Text(
                                      listData.applicantName!,
                                      style: const TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:  EdgeInsets.only(right: 100.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          Text(listData.region!,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          Text(listData.type!,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          Text(listData.applicantContact!,
                                            style: TextStyle(color: Colors.yellowAccent),
                                          ),

                                        ],
                                      ),
                                    ),
                                    trailing: const Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Icon(Icons.navigate_next,
                                        color: Colors.white,
                                        size:30.0,
                                      ),
                                    ),

                                  ),

                                ),
                              ),
                            )]));
                  }
              );
            } else{
              return CircularProgressIndicator();

            }
          },

        )));

      /*        UserCard(),

              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),
              UserCard(),
              SizedBox(height: 20.0),*/




  }
  void logout() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.clear();
    // localStorage.remove('user');
    // localStorage.remove('token');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
