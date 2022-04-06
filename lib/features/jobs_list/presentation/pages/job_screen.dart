import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/widgets/filter_widget.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/widgets/job_list.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/widgets/search_bar.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Row(
          
              children: const [
                SearchBarWidget(),
                FilterWidget(),
              ],
            ),
            Expanded(child: buildBlocWidget()),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.format_align_left, size: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/profile_image.jpg",
                    width: 40,
                    height: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBlocWidget() {
    return BlocBuilder<JobCubit, JobState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
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
