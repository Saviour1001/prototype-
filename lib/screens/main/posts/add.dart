import 'package:flutter/material.dart';
import 'package:day12_login/services/posts.dart';

class Add extends StatefulWidget {
  Add({Key key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String orgName = '';
  String orgContact = '';
  String jobType = '';
  String jobDescription = '';
  String State = '';
  String Address = '';
  String OrgEmail = '';

  final PostService _postService = PostService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Post here"),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
                textColor: Colors.white,
                onPressed: () async {
                  _postService.savePost(orgName, orgContact, jobType,
                      jobDescription, State, Address, OrgEmail);
                  Navigator.pop(context);
                },
                child: Text("Post your Job!!"))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      orgName = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon: const Icon(
                          IconData(0xe61e, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Organization Name"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      State = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon:
                          Icon(IconData(59453, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "State"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      orgContact = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon:
                          Icon(IconData(57608, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Contact Number"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      jobDescription = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon:
                          Icon(IconData(59047, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Description"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      Address = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon:
                          Icon(IconData(60190, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Address(including City)"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: new Form(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      OrgEmail = val;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      suffixIcon:
                          Icon(IconData(58044, fontFamily: 'MaterialIcons')),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Email"),
                ),
              ),
            ),
          ],
          //],
        )));
  }
}
