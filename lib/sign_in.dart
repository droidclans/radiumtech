import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:radium_tech/Screens/user_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Services/globals.dart';
import 'Services/login_api.dart';
import 'myhome.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var member_email;
  var member_password;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _checkLogin = true;

/*  SnackbarController _showMsg(msg) {
    return Get.snackbar(
      "Welcome to Flutter Agency",
      "We are expert in FLutter App Development",
      icon: Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
    );
  }*/
 /* final _fromKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  String _email = '';
  String _password = '';
  String message = 'Login Failed';
  bool _validate = false;




  loginPressed() async {
    if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>  UserData(),
            ));
      } else {
          errorSnackBar(context, 'Invalid Credential');

      }
    }
    else {
      errorSnackBar(context, 'enter all required fields');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Form(
        key: _formKey,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
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
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (emailValue) {
                      if (emailValue!.isEmpty) {
                        return 'Please enter email';
                      }
                      member_email = emailValue;
                      return null;
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
                    validator: (passwordValue) {
                      if (passwordValue!.isEmpty) {
                        return 'Please Enter Password';
                      }
                      member_password = passwordValue;
                      return null;
                    },
                  /*  onChanged: (value) {
                      _password = value;
                    },*/

                   // controller: passController,
                    //controller: passController,
                /*    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Password cannot be empty';
                      }
                      return  null;
                    },*/
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
                SizedBox(height: size.height * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: RaisedButton(
                    color: Colors.green,
             onPressed: (){
                      if(_formKey.currentState!.validate()){
                        _login();
                      }


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
        Text(
            _checkLogin ? "" : "Username or password is invalid",
            style: TextStyle(color: Colors.red)),
                //Text(message),
                /*Container(
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
                )*/
              ],
            ),
      ),
        );


  }
  void _login() async {
    setState(() {
      _isLoading = true;
      _checkLogin = true;
    });
    var data = {'email': member_email, 'password': member_password};
    print(data);

    var res = await   Network().authData(data, '/signin');
    print(res);
    var body =  jsonDecode(res.body);
    print(body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['username']));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserData()),
      );
      _checkLogin = true;
    } else {
      //(body['message']);
      _checkLogin = false;
    }

    setState(() {
      _isLoading = false;
    });
  }
/*  void logIn() async{

    if(passController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(Uri.parse('https://testerp.radiumpk.com/signin'),
      body: ({
        'email': emailController.text,
        'password': passController.text
      })
      );
      if(response.statusCode == 200) {
        final body = jsonDecode(response.body);
        errorSnackBar(context, 'Succefully Login ${body['']}');
        pageRoute(body!['token']);
       // Map<String,dynamic>user=response['data'];
        //savePref(user['survey_id']);
        print(savePref);


      } else {
        errorSnackBar(context, 'Invalid Credential');
      }
    }else {
      errorSnackBar(context, 'empty');
    }

  }
  void pageRoute(String token) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('signin', token);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>  UserData(),
        ));

  }
  savePref(int survey_id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setInt("survey_id", survey_id);

    preferences.commit();

  }*/
}
