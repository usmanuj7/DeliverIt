import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      child: Container(
        color: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
               
                // padding: const EdgeInsets.all(8.0),
                child: Text("Deliver It", style: TextStyle(fontSize: 28, color: Colors.white))
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: 
              Icon(
                Icons.pageview,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'OCR',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
          
              },
            ),
            ListTile(
              leading:
              Icon(
                Icons.speaker_notes,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'Text to Speech',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => TextToSpeech(null, null)));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.translate,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'Translation',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
          
              },
            ),

                        ListTile(
              leading: Icon(
                Icons.assessment,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'Saved Documents',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                           
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star_border,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'Rate this App',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
       
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'Share with others',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
    
              },
            ),
            ListTile(
              leading: Icon(
                Icons.error_outline,
                color: Color.fromRGBO(1, 30, 31, 1.0),
              ),
              title: Text(
                'About us',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(1, 30, 31, 1.0),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
            
              },
            ),
          ],
        ),
      ),
    );
  }
}
