
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {

  final String placeholder;

  const AppTextField({ required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return  Container(
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xff1E1C24),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xff5d5d67),
                    width: 1 
                  )
                ),
                child: TextFormField(
                  
                   cursorColor: Colors.redAccent,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle: const TextStyle(
                    color: Color(0xff8f8f9e),
                    fontSize: 15,),
                    border: InputBorder.none
                  ),
                ),
              );
  }
}