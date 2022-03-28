import 'package:flutter/material.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

import 'job_shape.dart';
Widget buildLoadedListWidgets({required List<Job>? jobs}) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: jobs?.length,
      itemBuilder: (BuildContext context, index) {
        return JobShape(job: jobs![index]);
      }); /*(
        itemCount: allJobs.length,
        itemBuilder: (BuildContext context, index) {
          return JobShape(job: allJobs[index]);
        });*/
}