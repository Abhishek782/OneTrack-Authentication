import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:mini_project_ui/Screens/VerifyEmail.dart';
import 'package:mini_project_ui/screens/signup_screen.dart';
import 'package:mini_project_ui/screens/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {

    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(email == "" || password == "") {
      log("Please fill all the fields!");
    }
    else {

      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null) {

          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(context, CupertinoPageRoute(
              builder: (context) => MyApp()
          ));

        }
      } on FirebaseAuthException catch(ex) {
        log(ex.code.toString());
      }
    }
  }
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("User Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Lottie.asset('assets/lgin.json'),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [


                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                        hintText: "Email Address",
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),
                    ),
                    ),

                    SizedBox(height: 10,),

                    TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hintText: "Password",
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          Text("Don't have an account ? "),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => SignUpScreen()));
                        },
                          child: Text("Signup",
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  SizedBox(
                    height: 30,
                  ),

                    // CupertinoButton(
                    // onPressed: () {
                    // login();
                    // },
                    // color: Colors.teal,
                    // child: Text("Login"),
                    // ),

                    // SizedBox(height: 5,),

                    // CupertinoButton(
                    // onPressed: () {
                    //   Navigator.push(context, CupertinoPageRoute(
                    //       builder: (context) => SignUpScreen()
                    //   ));
                    // },
                    // child: Text("Create an Account", style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),)
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                  //   Navigator.push(
                  //       context, MaterialPageRoute(builder: (_) => MyApp()));
                  //
                  login();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25
                    ),

                  ),
                ),
              ),



                  ],


              ),
            ),

          ],
        ),
      ),
    );
  }
}