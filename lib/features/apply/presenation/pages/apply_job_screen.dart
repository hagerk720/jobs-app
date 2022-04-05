import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jobs_tdd/cores/di/injectable.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:jobs_tdd/features/apply/presenation/bloc/cubit/apply_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

// ignore: must_be_immutable
class ApplyJobScreen extends StatelessWidget {
  ApplyInfo? user;
  Job? job;
  int? expectedSalary;
  int? currentSalary;
  File? fileCV;
  LocalDataSource? localDataSource;
  ApplyJobScreen({Key? key, required Job job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    GlobalKey<FormState> _formKey_apply = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt<ApplyCubit>(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey_apply,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Expected Salary',
                      ),
                      validator: (String? value) {
                        if (value == null) {
                          return 'field is empty ';
                        } else {
                          expectedSalary = int.parse(value);
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Current Salary ',
                      ),
                      validator: (String? value) {
                        if (value == null) {
                          return 'field is empty ';
                        } else {
                          currentSalary = int.parse(value);
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber)),
                        onPressed: () async {
                          fileCV = await pickFile();
                        },
                        icon: const Icon(Icons.upload),
                        label: const Text("Upload CV"),
                      ),
                    ),

                    //ElevatedButton(onPressed: (){}, child: const Text("upload")
                  ],
                ),
              ),
            ),
            BlocConsumer<ApplyCubit, ApplyState>(
              listener: (context, state) {
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
                  onPressed: () {
                    if (_formKey_apply.currentState!.validate()) {
                      user = ApplyInfo(
                        jobId: job?.idJob,
                        expectedSalary: expectedSalary,
                        currentSalary: currentSalary,
                        fileCV: fileCV,
                      );
                      print("userrrrrrrrrrr ${user?.currentSalary}");
                      BlocProvider.of<ApplyCubit>(context).apply(user!);
                    }
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

  Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    final file = result?.files.last.path;

    return File(file!);
  }
}
