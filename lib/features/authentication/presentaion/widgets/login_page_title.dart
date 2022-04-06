import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreenTitle extends StatelessWidget {
  String title;
  String subTitle;
  LoginScreenTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 60),
        ),
        Text(
          subTitle,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 50),
        ),
      ],
    );
  }
}
