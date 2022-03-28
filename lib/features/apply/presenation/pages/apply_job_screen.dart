import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:jobs_tdd/features/apply/presenation/bloc/cubit/apply_cubit.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart';

class ApplyJobScreen extends StatelessWidget {
  // int? job_id;
  ApplyInfo? user;
  ApplyJobScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Name',
                // hintText: ,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Education',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'your Skills',
              ),
            ),
            BlocConsumer<ApplyCubit, ApplyState>(
              listener: (context, state) {
                //print(state);
                state.when(
                    initial: () {},
                    apply: (msg) {
                      print(msg);
                      Navigator.pop(context);
                    });
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    user = ApplyInfo(
                        user_id: MySharedPreferences.getUserId(),
                        job_id: MySharedPreferences.getJobId());
                    BlocProvider.of<ApplyCubit>(context).apply(user!);
                    print(
                        " job id " + MySharedPreferences.getJobId().toString());
                  },
                  child: Text(
                    "apply",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
