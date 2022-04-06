import 'package:flutter/material.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/presenation/pages/apply_job_screen.dart';
import 'package:jobs_tdd/features/apply/presenation/pages/description_job.dart';

import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

// ignore: must_be_immutable
class JobShape extends StatelessWidget {
  LocalDataSource? localDataSource;
  Job job;
  JobShape({Key? key, required this.job, this.localDataSource})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JobDescriptionScreen(
                      job: job,
                    )));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    job.nameJob.toString(),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                job.description.toString(),
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "\$45k-\$70k/yr",
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
