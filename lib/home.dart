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
      backgroundColor: Theme.of(context).colorScheme.background,
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
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Theme.of(context).colorScheme.onPrimary),
              child: ClipRect(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Find a perfect \n job for you ",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          "Dare to Live The Life You Dreamed For \n YourSelf. Go Forword And Make Your Dreams \n Come True ",
                          style: Theme.of(context).textTheme.headline3),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: width / 1.5,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Text(
                              "get started",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
