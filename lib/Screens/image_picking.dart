
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../myhome.dart';

class MyImagePick extends StatefulWidget {
  @override
  _MyImagePickState createState() => _MyImagePickState();
}
class _MyImagePickState extends State<MyImagePick> {
  File? _image;
  File? selectedImage;

  Future getImage() async {
    final pickedImage =
    await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      selectedImage = File(pickedImage!.path);
    });
  }

  Future imgFromGallery() async {
    final myImage = await ImagePicker().getImage(
        source: ImageSource.gallery);

    setState(() {
      selectedImage = File(myImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Insured Details"),
      ),
      body:
         Center(
           child: Column(
             children: [
               InkWell(
                onTap: () {
                  _showPicker(context); //pickImage();
                },
                child: Container(
                    width: 150,
                    height: 200,
                    child: selectedImage == null
                        ? Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/createpic.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                        : Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.file(
                        selectedImage!,
                        fit: BoxFit.fill,
                      ),
                    )),
        ),

               SizedBox(height: 20.0),
               InkWell(
                 onTap: () {
                   _showPicker(context); //pickImage();
                 },
                 child: Container(
                     width: 150,
                     height: 200,
                     child: selectedImage == null
                         ? Container(
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/createpic.png'),
                           fit: BoxFit.fill,
                         ),
                       ),
                     )
                         : Container(
                       width: 150,
                       height: 200,
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                       ),
                       child: Image.file(
                         selectedImage!,
                         fit: BoxFit.fill,
                       ),
                     )),
               ),
               SizedBox(height: 20.0),
               InkWell(
                 onTap: () {
                   _showPicker(context); //pickImage();
                 },
                 child: Container(
                     width: 150,
                     height: 200,
                     child: selectedImage == null
                         ? Container(
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/createpic.png'),
                           fit: BoxFit.fill,
                         ),
                       ),
                     )
                         : Container(
                       width: 150,
                       height: 200,
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                       ),
                       child: Image.file(
                         selectedImage!,
                         fit: BoxFit.fill,
                       ),
                     )),
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
                     label: Text('Save'),
                     icon: Icon(Icons.navigate_next),



                   ),
                 ],
               ),
             ],
           ),
         ),
      );

  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () async {
                      getImage();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }


}