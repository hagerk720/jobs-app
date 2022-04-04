import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:jobs_tdd/features/apply/presenation/bloc/cubit/apply_cubit.dart';

// ignore: must_be_immutable
class ApplyJobScreen extends StatelessWidget {
  ApplyInfo? user;
  LocalDataSource? localDataSource;
  ApplyJobScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
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
                      Fluttertoast.showToast(
                          msg: msg.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      Navigator.pop(context);
                    });
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () async {
                    user = ApplyInfo(
                        idUser:await localDataSource!.getUserId(),
                        idJob:await localDataSource!.getJobId(),
                        );
                    BlocProvider.of<ApplyCubit>(context).apply(user!);
                  },
                  child: const Text(
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
