import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btntext;
  final Function onPressed;

  CustomButton({@required this.btntext, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          padding: EdgeInsets.symmetric(vertical: 10.0),
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff02aabd),
              Color(0xff00cdac),
            ]),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Text(
            btntext,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
