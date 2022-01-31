import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Services/globals.dart';
import 'Services/login_api.dart';
import 'myhome.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _fromKey = GlobalKey<FormState>();
  //final emailController = TextEditingController();
  //final passController = TextEditingController();
  String _email = '';
  String _password = '';
  String message = '';


  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const MyHomePage(),
            ));
      } else {
        setState(() {
          message = 'Login Failed';
        });

      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Form(
        key: _fromKey,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      _email = value;
                    },
                    //controller: emailController,

                    validator: (value) {
                      if(value == null) {
                        return 'Email cannot be empty';
                      }
                      return  null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                        labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                    ),

                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      _password = value;
                    },
                    //controller: passController,
                    validator: (value) {
                      if(value == null) {
                        return 'Password cannot be empty';
                      }
                      return  null;
                    },
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(
                        labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
         /*       Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                  ),
                ),*/
                SizedBox(height: size.height * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: (){
                      loginPressed();
                    },
                    /*    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            SellerNavigation()
                        ),
                      );
                    },*/
              /*      onPressed: () async{




                      if(_fromKey.currentState!.validate()){
                        var email = emailController.text;
                        var password = passController.text;
                        var rsp = await loginUser(email, password);

                        if (rsp['status'] == 200){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                MyHomePage()
                            ),
                          );
                        }
                      } else {
                        setState(() {
                          message = 'Login Failed';
                        });
                      }*/
                        /*var email = emailController.text;
                        var password = passController.text;
                        var rsp = await loginUser(email, password);
                        var val = "200";
                        if(rsp.containsKey('code')){
                          if(rsp['code']== val){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  MyHomePage()
                              ),
                            );
                          }
                        } *//*else {
                          setState(() {
                            message = 'Login Failed';
                          });
                        }*/
                     // }

                  //  },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
                      padding: const EdgeInsets.all(0),
                      child: const Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                //Text(message),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: () => {

                    },
                    child: const Text(
                      "Don't Have an Account? Sign up",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2661FA)),
                    ),
                  ),
                )
              ],
            ),
      ),
        );


  }
}
