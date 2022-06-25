import 'package:flutter/material.dart';
import 'package:tubes_ppb_gabungan/Page/First_Page/components/background.dart';
import 'package:tubes_ppb_gabungan/Page/Login_Page/Login.dart';
import 'package:tubes_ppb_gabungan/Page/Signup_Page/signup.dart';
import 'package:tubes_ppb_gabungan/components/button_rounded.dart';
import 'package:tubes_ppb_gabungan/constants.dart';


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
              "Hi, Welcome to bayar.KU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              'assets/icons/background2.png',
              width: size.width * 0.45,
            ), 
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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

