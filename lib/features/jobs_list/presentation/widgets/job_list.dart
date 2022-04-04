import 'package:flutter/material.dart';

import 'job_shape.dart';

Widget buildLoadedListWidgets({required List<dynamic>? jobs}) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: jobs?.length,
      itemBuilder: (BuildContext context, index) {
        return JobShape(job: jobs![index]);
      });
}
