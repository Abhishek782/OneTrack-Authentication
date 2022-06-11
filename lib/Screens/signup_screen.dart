import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:mini_project_ui/Screens/Login.dart';
import 'package:email_auth/email_auth.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _emailauth = FirebaseAuth.instance;
  // EmailAuth emailAuth =  new EmailAuth(sessionName: "OneTrack session");
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void createAccount() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();

    if(email == "" || password == "" || cPassword == "") {
      log("Please fill all the details!");
    }
    else if(password != cPassword) {
      log("Passwords do not match!");
    }
    else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null) {
          Navigator.pop(context);
        }
      } on FirebaseAuthException catch(ex) {
        log(ex.code.toString());
      }
    }
  }

  // void sendOtp() async {
  //   var result = await emailAuth.sendOtp(
  //       recipientMail: emailController.value.text, otpLength: 5
  //   );
  //   if(result)
  //     {
  //       print("OTP sent");
  //     }else
  //       {
  //         print("Something went wrong");
  //       }
  // }
  //
  // bool verifyOTP() {
  //   print(emailAuth.validateOtp(
  //       recipientMail: emailController.value.text,
  //       userOtp: otpController.value.text));
  // }
  // emailAuth.validateOtp(
  // recipientMail: _emailcontroller.value.text,
  // userOtp: _otpcontroller.value.text)

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Create account"),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget> [

            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget> [
                //   SizedBox(
                //     height: 45,
                //   ),
                // SizedBox(
                //   height: 200,
                //   child: Image.asset("images/logo.png",
                //   fit: BoxFit.contain,),
                // ),
                //   SizedBox(
                //     height: 70,
                //   ),
                  Lottie.asset('assets/Register.json'),
                  SizedBox(height: 10,),
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

                  SizedBox(height: 10,),

                  TextField(
                    controller: cPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Confirm Password",
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),

                  SizedBox(height: 100,),

                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        //   Navigator.push(
                        //       context, MaterialPageRoute(builder: (_) => MyApp()));
                        //
                        LoginScreen();
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 25
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}