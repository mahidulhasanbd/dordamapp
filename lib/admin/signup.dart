import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dordam/admin/home.dart';

import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ 
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(  
        child: Padding(
          padding: EdgeInsets.fromLTRB(20,120,20,0),
          child: Column(
            children: <Widget>[
              //logoWidget("assets/images/logo1.jpg"),
              SizedBox(
                height: 30,),
                reusableTextField("enter user name:", Icons.person_outline, false, _userNameTextController),
              SizedBox(
                height: 30,),
                reusableTextField("enter email:", Icons.person_outline, false, _emailTextController),
              
              SizedBox(
                height: 30,),
                reusableTextField("enter password:", Icons.lock_outline, true, _passwordTextController),
              SizedBox(
                height: 30,),
                signInSignUpButton(context, false ,() {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, 
                  password: _passwordTextController.text).then((value){
                    print("created new account");
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => HomeScreen())));
                  }).onError((error, stackTrace) {
                    print("error ${error.toString()}");
                  });


                })
               // signUpOption()
            ],
          ),
        ),
      ),
      ),
    );
  }
}

