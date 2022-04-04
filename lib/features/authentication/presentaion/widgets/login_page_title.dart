import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
          style: const TextStyle(color: Colors.white, fontSize: 60),
        ),
        Text(
          subTitle,
          style: const TextStyle(color: Colors.amber, fontSize: 50),
        ),
      ],
    );
  }
}
