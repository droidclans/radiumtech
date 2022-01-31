import 'package:flutter/material.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 40),
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
                    Padding(
                      padding: EdgeInsets.only(right: 100.0),
                      child: Text('Knows',
                        style: TextStyle(
                            color: Colors.green
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 90.0),
                      child: Text('Applicant:',
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
                      value: this.applicant,
                      onChanged: (value) {
                        setState(() {
                          this.applicant = value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
