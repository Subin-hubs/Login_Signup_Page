import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
                  padding: const EdgeInsets.only(top: 85, left: 10),
                  child: Text("Welcome back!",style:
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Login to continue",style:
                    TextStyle(
                      fontSize: 15,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 80),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.key),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
            
                      )
            
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Forget your password?")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text("LOGIN")),
                  ),
                ),
            
              ],
            ),
          ),
        ));
  }
}
