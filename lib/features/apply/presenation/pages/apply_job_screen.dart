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
  ApplyJobScreen({Key? key, required this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    GlobalKey<FormState> _formKey_apply = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt<ApplyCubit>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ClipRect(
          child: SingleChildScrollView(
            child: Column(
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
                        Divider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          height: 3,
                          thickness: 5,
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
                            onPressed: () async {
                              fileCV = await pickFile();
                            },
                            icon: const Icon(Icons.upload),
                            label: const Text("Upload CV"),
                          ),
                        ),
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
                          Navigator.pushNamed(context , "/jobs");
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
                          BlocProvider.of<ApplyCubit>(context).apply(user!);
                        } else {}
                      },
                      child: const Text(
                        "apply",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
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
