import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Color mainColor = Color(0xFFF2D54F);
  // Print numbers from 1 to 5

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text(
                'ID CARD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.grey[800],
            ),
            body: SafeArea(
                child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/R.png"),
                  backgroundColor: Colors.yellow,
                ),
              ),
              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.grey[500],
                height: 10,
              ),
              Container(
                child: Text("Name".toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 1.66,
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                    )),
                width: 310,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
              ),
              Container(
                child: Text("Diaa eddine",
                    style: TextStyle(
                      fontSize: 25,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    )),
                width: 310,
              ),
              Container(
                child: Text("HomeTown".toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 1.66,
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                    )),
                width: 310,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
              ),
              Container(
                child: Text("Oum el bouaghi , Algeria",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(252, 216, 49, 20),
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans-serif",
                    )),
                width: 310,
              ),
              Container(
                child: Text("Current Level".toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 1.66,
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                    )),
                width: 310,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
              ),
              Container(
                child: Text("Student",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(252, 216, 49, 20),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    )),
                width: 310,
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.grey,
                    size: 30,
                  ),
                  title: Text(
                    "diaa.rahem@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  onTap: () {
                    showMessage();
                    // Handle onTap
                  },
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey,
                    size: 30,
                  ),
                  title: Text(
                    "0558383939",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ),
            ]))));
  }

  void showMessage() {
    // Show a toast message
    Fluttertoast.showToast(
      msg: 'Yamate Kudsaia',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
  }
}
