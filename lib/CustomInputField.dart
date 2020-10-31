import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;
  CustomInputField(this.fieldIcon, this.hintText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 5,
        color: Colors.deepOrange,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: fieldIcon,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              width: 200,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: hintText,
                    filled: true,
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
