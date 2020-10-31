import 'package:LoginApp_withIcons/BouncyPageRoute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'SnackBar',
    home: SnackBarpage(),
  ));
}

class SnackBarpage extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    TextEditingController customcontroller = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: <Widget>[
                Icon(Icons.delete),
                Text('Delete'),
              ],
            ),
            content: Text("Do you want to delete!"),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5,
                  child: Text('No'),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop(customcontroller.text.toString());
                  }),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(customcontroller.text.toString());
                },
                child: Text('Yes'),
                color: Colors.green,
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(
        builder: (context) {
          return Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: () {
                        SnackBar mysnackbar =
                            SnackBar(content: Text('Hello SnackBar'));
                        Scaffold.of(context).showSnackBar(mysnackbar);
                      },
                      child: Text(
                        'SnackBar',
                        style: TextStyle(fontSize: 20),
                      )),
                  new FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: () {
                        createAlertDialog(context);
                      },
                      child: Text('AlertBox')),
                  new FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context, BouncyPageRoute(widget: SecondScreen()));
                      },
                      child: Text('Route Transitions'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'Second Screen',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
