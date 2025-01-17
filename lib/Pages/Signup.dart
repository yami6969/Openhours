import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openhours/Widgets/Textfields.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 199, 152, 255),
              Color.fromARGB(255, 140, 173, 255),
            ],
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Create account',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Text(
                'Get Started now!',
                style: TextStyle(fontSize: 31, color: Colors.white),
              )),
          const SizedBox(height: 10),
          SizedBox(
            width: width * 0.8,
            height: height * 0.06,
            child: PurpTextField('Username', false),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: width * 0.8,
            height: height * 0.06,
            child: PurpTextField('Email address', false),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: width * 0.8,
            height: height * 0.06,
            child: PurpTextField('Password', true),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: width * 0.8,
            height: height * 0.06,
            child: PurpTextField('Confirm Password', true),
          ),
          const SizedBox(height: 60),
          SizedBox(
            width: width * 0.6,
            height: height * 0.06,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  side: const BorderSide(width: 1.0, color: Colors.white)),
              onPressed: () {}, //signup
              child:
                  const Text('Sign up', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]),
      ),
    );
  }
}
