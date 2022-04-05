// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var size, height, width;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: width,
              height: height / 2,
              child: Image.asset('assets/images/search_image.png')),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10, top: 25),
              width: width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Color(0xffd4af37)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Find a perfect \n job for you ",
                    style: TextStyle(
                        color: Colors.black, fontSize: 30, fontFamily: "bold"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                        "Dare to Live The Life You Dreamed For \n YourSelf. Go Forword And Make Your Dreams \n Come True ",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 55),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ))),
                            onPressed: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: const Text(
                              "get started",
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
