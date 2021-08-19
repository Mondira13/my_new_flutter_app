import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'ButtonsListScreen.dart';
import 'ListViewStatic.dart';
import 'NavigationDrawerScreen.dart';
import 'BottomTabNavigationScreen.dart';
import 'TabBarScreen.dart';
import 'GridViewScreen.dart';
import 'OpenCameraScreen.dart';
import 'OpenGalleryScreen.dart';
import 'DocumentPickerScreen.dart';


class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: RaisedButton(
                child: Text(
                  "Go to next screen",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                // padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                splashColor: Colors.grey,
              ),
            ),

            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Button list",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ButtonsListScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),

            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "ListView With Static Data",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewStatic()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Navigation Drawer",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationDrawerScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Bottom Tab Navigation",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomTabNavigationScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Tab Bar",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabBarScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Grid View With Static Data",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridViewScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),

            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Open Camera",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenCameraScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Access Gallery",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenGalleryScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: RaisedButton(

                child: Text(
                  "Document Picker",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocumentPickerScreen()),
                  );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                splashColor: Colors.grey,
              ),
            ),





          ],
        ));
  }



  void showAlertDialog(BuildContext context, String text) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert Title"),
      content: Text(text),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
