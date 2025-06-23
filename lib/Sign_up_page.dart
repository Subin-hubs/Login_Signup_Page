import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple.shade50,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 10),
                  child: Text("Welcome!!",style:
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
            
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Sign Up to Continue",style:
                    TextStyle(
                      fontSize: 15,
            
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30,top: 5),
                  child: TextFormField(
                    controller: email,
                    decoration:
                    InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    ),
            
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF5E35B1),
                      ),

                        onPressed: (


                        ){

                      Fluttertoast.showToast(msg: "Sign up Sucessfull");
                      log(username.text);
                      log(email.text);
                      log(password.text);
                    },
                        child: Text("Sign Up",style: TextStyle(
                          color: Colors.white,
                        ),)),
                  ),

                )],
            ),
          ),
        ));
  }
}
