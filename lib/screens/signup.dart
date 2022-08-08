import 'package:flutter/material.dart';
import 'package:job_post/button1.dart';
import 'package:job_post/screens/signin.dart';
import 'package:job_post/textfield.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff191720),
        body: Container(
          padding: const EdgeInsets.only(top: 110, left: 27 , right: 27, bottom: 59),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              const Text(
                "Let's Sign you up",
                style: TextStyle(color: Colors.white, fontSize: 30,
                fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome \nJoin The Community",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 47),
              const AppTextField(placeholder: "Enter your name"),
              const AppTextField(placeholder: "Enter your E-mail"),
              const AppTextField(placeholder: "Enter your Password"),
              const Spacer(),
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SignIn()));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account", style: TextStyle(
                      color: Colors.white54,
                    ),),
                    Text("Sign Up", style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 13),
              Button1(label: "Sign Up", onPress: (){})
            ],
          ),
        ));
  }
}

