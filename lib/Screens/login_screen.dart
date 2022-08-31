// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 100,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 100,
              )),
          Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset("assets/icons/login.svg"),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66)),
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email : ",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.person,color: Colors.purple[900],),
                        iconColor: Colors.purple,
                      ))),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66)),
                      width: 350,
                      child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password :  ",
                            hintStyle: TextStyle(fontSize: 19),
                            prefixIcon: Icon(Icons.lock,color: Colors.purple[900],),
                            suffixIcon: Icon(Icons.visibility,color: Colors.purple[900],),
                          ))),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 140, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an Account ? ",
                        style: TextStyle(
                          color: Colors.purple, 
                          ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.purple,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ])
        ]),
      )),
    );
  }
}
