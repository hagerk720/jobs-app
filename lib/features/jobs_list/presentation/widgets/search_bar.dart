// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      width: width - 50,
      height: 50,
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Search',
            icon: Icon(
              Icons.search,
            ),
            contentPadding: EdgeInsets.all(5),
            suffixIconColor: Colors.white),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
