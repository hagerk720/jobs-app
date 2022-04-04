import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginSignUpBtn extends StatelessWidget {
  Function onPressed;
  String btnText;
  LoginSignUpBtn({Key? key, required this.onPressed, required this.btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Text(
        btnText,
        style: const TextStyle(color: Colors.amber),
      ),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.black)),
    );
  }
}
