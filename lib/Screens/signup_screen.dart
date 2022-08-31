// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
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
                "assets/images/signup_top.png",
                width: 100,
              )),
          Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: 100,
              )),
          Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "SIGNUP",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 250,
                child: SvgPicture.asset('assets/icons/signup.svg')),
            SizedBox(
              height: 30,
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
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.purple[900],
                        ),
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
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.purple[900],
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
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
                      "SignUp",
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
                        "Already have an Account ? ",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 277,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 3,
                        )),
                        Text(
                          "  OR  ",
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 3,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.2,
                              ),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple,
                            width: 25,
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.2,
                              ),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            "assets/images/instagram.svg",
                            color: Colors.purple,
                            width: 25,
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.2,
                              ),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            "assets/images/twitter.svg",
                            color: Colors.purple,
                            width: 25,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ])
        ]),
      )),
    );
  }
}
