import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tubes_app/Login.dart';
import 'package:tubes_app/main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                margin: const EdgeInsets.only(top: 50, bottom: 50),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 50), // for vertical spacing
                    const CircleAvatar( // avatar in upper part of login page
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person_rounded,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                    const Align( // align the text into Center
                      alignment: Alignment.center,
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cardo',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15), // vertical spacing
                    TextFormField( // form input for Name
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        hintText: 'Input your Name here...',
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                          // set the underline border into black
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                      onSaved: (String? value) {
                        // Nanti buat ambil value yang diinput
                      },
                      validator: (String? value) {
                        // buat validasi input
                      },
                    ),
                    const SizedBox(height: 15), // vertical spacing
                    TextFormField( // form input for email
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Input your Email here...',
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                          // set the underline border into black
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                      onSaved: (String? value) {
                        // Nanti buat ambil value yang diinput
                      },
                      validator: (String? value) {
                        // buat validasi input
                      },
                    ),
                    const SizedBox(height: 10), // for vertical spacing
                    TextFormField( // inpnut password
                      // hide the inputted value
                      obscureText: true,
                      // form setting
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Input your password here...",
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                      onSaved: (String? value) {
                        // nanti buat ambil data input
                      },
                      validator: (String? value) {
                        // nanti buat validasi input
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50, right: 50, left: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle sign up button press
                          // dipindahin ke home screen
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        // button untuk login
                        style: ElevatedButton.styleFrom( 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.amber,
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 15, fontFamily: 'Cardo', color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15), // vertical spacing
                    // register text clickable
                    Align(
                      // separate the first clause to become not clickable
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: const TextStyle(color: Colors.black),
                          children: [
                            // make the second clause clickable
                            TextSpan(
                              text: "Login here",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    // temporary move to home screen
                                    // it should be move to register
                                    MaterialPageRoute(builder: (context) => const LoginPage()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
