// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:tubes_ppb_gabungan/Page/Home_Page/Home.dart';
import 'package:tubes_ppb_gabungan/Page/Login_Page/components/Background.dart';
import 'package:tubes_ppb_gabungan/Page/Signup_Page/signup.dart';
import 'package:tubes_ppb_gabungan/components/already_have_an_account_check.dart';
import 'package:tubes_ppb_gabungan/components/button_rounded.dart';
import 'package:tubes_ppb_gabungan/components/rounded_input_field.dart';
import 'package:tubes_ppb_gabungan/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME BACK",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            Image.asset(
              'assets/icons/background3.png',
              width: size.width * 0.5,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: "Enter Email",
              onChange: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return Signup_Pages();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

