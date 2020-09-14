import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  @override
  final IconData leading;
  IconData trailing = Icons.lock_outline;
  bool hidedata = true;
  final String hint;

  PasswordTextField({@required this.leading, this.hint});

  _PasswordTextField createState() => _PasswordTextField();
}

class _PasswordTextField extends State<PasswordTextField> {
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
                obscureText: this.widget.hidedata,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: this.widget.hint,
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            IconButton(
              icon: Icon(this.widget.trailing),
              color: Color(0xff00CDAC),
              onPressed: () {
                setState(() {
                  if (this.widget.hidedata != false) {
                    this.widget.hidedata = false;
                    this.widget.trailing = Icons.lock_open;
                  } else {
                    this.widget.hidedata = true;
                    this.widget.trailing = Icons.lock_outline;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
