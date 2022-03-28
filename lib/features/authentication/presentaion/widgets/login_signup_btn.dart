import 'package:flutter/material.dart';

class LoginSignUpBtn extends StatelessWidget {
  Function on_Pressed;
  String btnText;
  LoginSignUpBtn({Key? key, required this.on_Pressed, required this.btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => on_Pressed(),
      child: Text(
        btnText,
        style: TextStyle(color: Colors.amber),
      ),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.black)),
    );
  }
}
