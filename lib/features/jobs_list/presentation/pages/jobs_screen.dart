import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../bloc/jobs_cubit/cubit/job_cubit.dart';
import '../widgets/job_list.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

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
            return const Center(
              child: SizedBox(
                child: Text("loading"),
                width: double.infinity,
              ),
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
