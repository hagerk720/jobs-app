import 'package:flutter/material.dart';

class LoginScreenTitle extends StatelessWidget {
  String title;
  String subTitle; 
  LoginScreenTitle({Key? key, required this.title , required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 60),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.amber, fontSize: 50),
        ),
      ],
    );
  }
}
