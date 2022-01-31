import 'package:flutter/material.dart';

import '../myhome.dart';
class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
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
            title: const Text(
                'Anwar',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),
            ),
            subtitle: Padding(
              padding:  EdgeInsets.only(right: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('karachi',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('Residence',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('0217838273',
                    style: TextStyle(color: Colors.yellowAccent),
                  ),

                ],
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: const Icon(Icons.navigate_next,
              color: Colors.white,
                size:30.0,
              ),
            ),

          ),

        ),
      ),
    );
  }
}
