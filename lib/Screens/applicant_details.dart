import 'package:flutter/material.dart';
import 'package:radium_tech/Components/dropdown_button.dart';

import '../myhome.dart';

class ApplicantDetails extends StatefulWidget {
  const ApplicantDetails({Key? key}) : super(key: key);

  @override
  _ApplicantDetailsState createState() => _ApplicantDetailsState();
}

class _ApplicantDetailsState extends State<ApplicantDetails> {
  bool applicantDetail = false;
  bool applicantDetail1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Applicant Details'),
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
                 labelText: "Surveyor",
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
                 const Text('Report Status',
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
                       value: this.applicantDetail ,
                       onChanged: (value) {
                         setState(() {
                           this.applicantDetail  = value!;
                         });
                       },
                     ),
                     Text('positive'),
                   ],
                 ),
                 Row(
                   children: [
                     Checkbox(
                       shape: CircleBorder(),
                       checkColor: Color(0xff6276B9),
                       activeColor: Color(0xff6276B9),
                       value: this.applicantDetail1 ,
                       onChanged: (value) {
                         setState(() {
                           this.applicantDetail1  = value!;
                         });
                       },
                     ),
                     Text('Negative'),
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
                     'Comment',
                     style: TextStyle(color: Colors.green, fontSize: 12),
                   ),

                 ),
               ),
                Positioned(
                 left: 40.0,
                 top: 30.0,
                 child: DropDownDesign(),

               ),
             ],
           ),
           SizedBox(height: 20.0),
           Container(
             width:350,


             alignment: Alignment.center,
             //   margin: EdgeInsets.symmetric(horizontal: 40),
             child: TextFormField(
                 style: TextStyle(

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
                 labelText: "Remarks",
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
