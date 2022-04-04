import 'package:flutter/material.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';

import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

// ignore: must_be_immutable
class JobShape extends StatelessWidget {
  LocalDataSource? localDataSource; 
  Job job;
  JobShape({Key? key, required this.job , this.localDataSource}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.amber[100],
        child: Column(
          children: [
            Text(
              "job title " + job.nameJob.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 7,
            ),
            const SizedBox(
              height: 7,
            ),
            ElevatedButton(
              onPressed: () {
                localDataSource!.saveJobId(job.idJob!);
                Navigator.pushNamed(context, "/apply");
              },
              child: const Text(
                "apply",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
