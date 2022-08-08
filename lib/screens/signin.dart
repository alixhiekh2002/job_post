import 'package:flutter/material.dart';
import 'package:job_post/button1.dart';
import 'package:job_post/screens/job_listing.dart';
import 'package:job_post/textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff191720),
        body: Container(
          padding: EdgeInsets.only(top: 110, left: 27 , right: 27, bottom: 59),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              const Text(
                "Lets Sign you In",
                style: TextStyle(color: Colors.white, fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              const Text(
                "Welcome you have been missed",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 47),
              AppTextField(placeholder: "Enter your E-mail"),
              AppTextField(placeholder: "Enter your Password"),
              Spacer(),
              Button1(label: "Sign In", onPress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const JobListing()));
              })
            ],
          ),
        ));
  }
}

