import 'package:flutter/material.dart';

import 'regist.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(0, 1, 2, 1),
            Color.fromRGBO(25, 55, 119, 1),
            Color.fromRGBO(0, 1, 2, 1)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Image.asset("assets/images/header_loginPage.png", height: 120),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text("Login",
                            style: TextStyle(
                                fontSize: 36,
                                color: Color.fromRGBO(51, 204, 51, 1))),
                        SizedBox(height: 30),
                        Text(
                          " Email Address",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 252, 49, 1),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(51, 204, 51, 1),
                                      width: 3.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(51, 204, 51, 1),
                                      width: 3.0)),
                              hintText: "Enter your Email",
                              hintStyle: TextStyle(color: Colors.white54)),
                          controller: _emailController,
                        ),
                        SizedBox(height: 15),
                        Text(" Password",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 252, 49, 1),
                              fontSize: 16,
                            )),
                        SizedBox(height: 5),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(51, 204, 51, 1),
                                      width: 3.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(51, 204, 51, 1),
                                      width: 3.0)),
                              hintText: "Enter your Password",
                              hintStyle: TextStyle(color: Colors.white54)),
                          controller: _passwordController,
                          obscureText: true,
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: ElevatedButton(
                            child: Text('Login',
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                                backgroundColor:
                                    Color.fromRGBO(51, 204, 51, 1)),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 120),
                        Center(
                            child: Column(
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(color: Colors.white)),
                            GestureDetector(
                              child: Text("Create Account",
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 204, 51, 1),
                                      decoration: TextDecoration.underline)),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegistPage()));
                              },
                            ),
                          ],
                        ))
                      ])),
            ],
          ),
        ));
  }
}
