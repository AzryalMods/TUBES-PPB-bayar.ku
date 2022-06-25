import 'package:flutter/material.dart';
import 'package:tubes_ppb_gabungan/Page/Login_Page/login.dart';
import 'package:tubes_ppb_gabungan/Page/Signup_Page/components/background.dart';
import 'package:tubes_ppb_gabungan/Page/Signup_Page/components/or_divider.dart';
import 'package:tubes_ppb_gabungan/Page/Signup_Page/components/social_icon.dart';
import 'package:tubes_ppb_gabungan/components/already_have_an_account_check.dart';
import 'package:tubes_ppb_gabungan/components/button_rounded.dart';
import 'package:tubes_ppb_gabungan/components/rounded_input_field.dart';
import 'package:tubes_ppb_gabungan/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/icons/background1.png',
              width: size.width * 0.5,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChange: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.png",
                  press: () {
                    
                  },
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
