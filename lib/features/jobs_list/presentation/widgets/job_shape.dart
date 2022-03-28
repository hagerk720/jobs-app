import 'package:flutter/material.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/presenation/pages/apply_job_screen.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

class JobShape extends StatelessWidget {
  Job job;
  JobShape({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        color: Colors.amber[100],
        child: Column(

          children: [
            Text(
              
              "job title " + job.jobName.toString(),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 7,
            ),
            ElevatedButton(
              onPressed: () {
                MySharedPreferences.setJobId(job.jobId!);
                Navigator.pushNamed(context, "/apply");
              },
              child: Text(
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
