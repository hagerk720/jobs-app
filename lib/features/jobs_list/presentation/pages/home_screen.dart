import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/home.png'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign_up');
            },
            child: const Text(
              "SignUp",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.black)),
          ),
        ],
      ),
    );
  }
}
