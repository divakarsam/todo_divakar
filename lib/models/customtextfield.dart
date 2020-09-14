import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  @override
  final IconData leading;
  final String hint;

  CustomTextField({
    @required this.leading,
    this.hint,
  });

  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String signemail;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: Color(0xff00CDAC),
            width: 2.0,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              this.widget.leading,
              color: Color(0xff00CDAC),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                key: _formKey,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: this.widget.hint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
