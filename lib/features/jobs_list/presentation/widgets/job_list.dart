import 'package:flutter/material.dart';

import 'job_shape.dart';

Widget buildLoadedListWidgets({required List<dynamic>? jobs}) {
  return ListView.builder(
      padding: const EdgeInsets.only(top: 12),
      shrinkWrap: true,
      itemCount: jobs?.length,
      itemBuilder: (BuildContext context, index) {
        return JobShape(job: jobs![index]);
      });
}
