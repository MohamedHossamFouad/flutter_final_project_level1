// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 24, fontWeight: FontWeight.bold
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                SvgPicture.asset("assets/icons/chat.svg"),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66))),
                        ),
                        child: Text(
                          "Log in",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[50]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 90, vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66))),
                        ),
                        child: Text(
                          "Sign Up ",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 100,
                )),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 100,
                )),
          ],
        ),
      )),
    );
  }
}
