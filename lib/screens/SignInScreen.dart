import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final usertextFieldController = TextEditingController();
  final passwordtextFieldController = TextEditingController();

  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 30, 31, .9),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                // color: Colors.red,
                height: (MediaQuery.of(context).size.height / 5),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: (MediaQuery.of(context).size.height * 0.05),
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Container(
                // color: Colors.blue,
                height: (MediaQuery.of(context).size.height / 2.2),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: TextFormField(
                          controller: usertextFieldController,
                          enabled: true,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height *
                                0.02, // 18,
                            color: Color.fromRGBO(1, 30, 31, 1.0),
                            fontWeight: FontWeight.w200,
                          ),
                          textAlign: TextAlign.justify,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  // borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(1, 30, 31, .9))),
                              hintText: 'User Name')),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: TextFormField(
                            controller: passwordtextFieldController,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.02, // 18,
                              color: Color.fromRGBO(1, 30, 31, 1.0),
                              fontWeight: FontWeight.w200,
                            ),
                            textAlign: TextAlign.justify,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                suffix: IconButton(
                                  icon: Icon(Icons.lock),
                                  onPressed: _toggle,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    // borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(1, 30, 31, .9))),
                                hintText: 'Password')
                                )
                                ),
                                Padding(padding: EdgeInsets.symmetric(vertical:12),
                             child: FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical:16, horizontal:60),
                                    splashColor: Colors.blueAccent,
                                    onPressed: (){}, 
                                    child: Text("Login")
                                ),
                                )
                               
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
