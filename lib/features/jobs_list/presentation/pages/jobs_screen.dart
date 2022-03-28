import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc/jobs_cubit/cubit/job_cubit.dart';
import '../widgets/job_list.dart';

class JobsScreen extends StatefulWidget {
  JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  void initState() {
    BlocProvider.of<JobCubit>(context).getAllJobs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBlocWidget(),
    );
  }

  Widget buildBlocWidget() {
    return BlocBuilder<JobCubit, JobState>(
      builder: (context, state) {
       // print(MySharedPreferences.getToken());
        return state.when(
          initial: () {
            return Container(
              padding: EdgeInsets.only(top: 50, left: 50),
              child: Text("some thing wrong"),
              width: double.infinity,
            );
          },
          loaded: (data) {
            return buildLoadedListWidgets(jobs: data);
          },
        );
      },
    );
  }
}
