import 'package:flutter/material.dart';
import 'package:todo_divakar/models/custombtn.dart';
import 'package:todo_divakar/screen/login_screen.dart';
import 'package:todo_divakar/screen/register_screen.dart';
// import 'package:todo_divakar/models/customtextfield.dart';
// import 'package:todo_divakar/models/passwordtextfield.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: AssetImage('images/icon.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'TODO',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Color(0xff00cdac),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            CustomButton(
              btntext: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            CustomButton(
              btntext: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
