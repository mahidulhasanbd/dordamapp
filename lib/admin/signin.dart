import 'package:flutter/material.dart';
import 'package:dordam/admin/home.dart';
import 'package:dordam/admin/signup.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:dordam/utils/color_utils.dart';
import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
} 

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("assets/images/logo1.jpg"),
              SizedBox(
                height: 30,),
                reusableTextField("enter user name:", Icons.person_outline, false, _emailTextController),
              SizedBox(
                height: 30,),
                reusableTextField("enter password:", Icons.lock_outline, true, _passwordTextController),
              SizedBox(
                height: 30,),
                signInSignUpButton(context, true,() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
                signUpOption()
            ],
          ),
        ),
      ),
      ),
      ); 
  }

Row signUpOption(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "don't have a account?", style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>SignUpScreen()));
        },
        child: const Text(
          " SignUp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}

}  