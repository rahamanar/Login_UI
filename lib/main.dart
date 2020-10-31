import 'package:flutter/material.dart';
import 'CustomInputField.dart';
import 'SnackBarPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Align(
              widthFactor: 0.5,
              heightFactor: 0.6,
              alignment: Alignment.bottomRight,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                  width: 400,
                  height: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Material(
                          elevation: 20,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Image.asset(
                            'images/flutterlogo2.png',
                            height: 80,
                            width: 80,
                          )),
                      CustomInputField(
                          Icon(Icons.person, color: Colors.white), 'UserName'),
                      CustomInputField(
                          Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          'Password'),
                      Container(
                        width: 150,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SnackBarpage()));
                          },
                          color: Colors.deepOrange,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
