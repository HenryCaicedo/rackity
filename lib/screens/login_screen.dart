import 'package:flutter/material.dart';
import '../colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = screenHeight * 0.6;
    double boxWidth = 290.0;
    double borderRadius = 50.0;
    double boxHeight = 48.0; // Define the box height here

    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/rackity_logo.png',
                height: 100, // set the desired height for your logo
              ),
            ),
          ),
          Container(
            height: cardHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color(0xFF9ECDC2)],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: const Offset(0, -2),
                ),
              ],
              border: Border.all(
                color: lightGreen,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Bienvenido',
                      style: TextStyle(
                        color: Color(0xFF61857C),
                        fontFamily: 'JosefinSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 27.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: textFieldColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: boxWidth,
                    height: boxHeight, // Use the box height here
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'username',
                        hintStyle: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: textFieldColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: boxWidth,
                    height: boxHeight, // Use the box height here
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    width: boxWidth * 0.7,
                    height: boxHeight,
                    child: Material(
                      elevation: 5, // Set the elevation for the shadow
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/tabs');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                        ),
                        child: const Text('Log in'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Sign up',
                            style: TextStyle(color: textColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
