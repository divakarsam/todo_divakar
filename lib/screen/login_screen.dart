import 'package:flutter/material.dart';
import 'package:todo_divakar/models/custombtn.dart';
import 'package:todo_divakar/models/customtextfield.dart';
import 'package:todo_divakar/models/passwordtextfield.dart';
import 'package:todo_divakar/screen/task_screen.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/loginScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      height: 125,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage('images/icon.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                CustomTextField(
                  leading: Icons.person,
                  hint: 'email',
                ),
                PasswordTextField(
                  leading: Icons.vpn_key,
                  hint: 'password',
                ),
                CustomButton(
                  btntext: 'Login',
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, TaskScreen.id);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
