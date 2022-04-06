import 'package:flutter/material.dart';
import 'package:jobs_tdd/features/apply/presenation/pages/apply_job_screen.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

// ignore: must_be_immutable
class JobDescriptionScreen extends StatelessWidget {
  Job? job;
  JobDescriptionScreen({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width;

    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: ClipRect(
            child: Column(
              children: [
                Flexible(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Image.asset(
                          "assets/images/office.jpg",
                          width: width,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/mega.png",
                          width: 70,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "Mega trust",
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "${job?.nameJob}",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 7,
                ),
                const TabBar(tabs: [
                  Tab(
                    text: "Description",
                  ),
                  Tab(
                    text: "Company",
                  ),
                  Tab(
                    text: "Applicant",
                  )
                ]),
                Expanded(
                  child: Flexible(
                    child: TabBarView(
                      children: [
                        Center(
                            child: Text(
                                "${job!.description} ")),
                        const Center(
                          child: Text("Mega trust"),
                        ),
                        ApplyJobScreen(job: job)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
