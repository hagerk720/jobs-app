import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/cores/theme/job_theme.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/login/cubit/login_cubit.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/pages/job_screen.dart';
import 'package:jobs_tdd/home.dart';

import 'cores/di/injectable.dart';
import 'features/apply/presenation/bloc/cubit/apply_cubit.dart';
import 'features/apply/presenation/pages/apply_job_screen.dart';
import 'features/authentication/presentaion/pages/login_screen.dart';
import 'features/authentication/presentaion/pages/sign_up_screen.dart';

Future<void> main() async {
  //HttpOverrides.global = MyHttpOverrides();
  //
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: jobTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: LoginScreen(),
            ),
        '/sign_up': (context) => BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignUpScreen(),
            ),
        '/jobs': (context) => BlocProvider(
              create: (context) => getIt<JobCubit>(),
              child: const JobsScreen(),
            ),
        '/apply': (context) => BlocProvider(
              create: (context) => getIt<ApplyCubit>(),
              child: ApplyJobScreen(
                job: const Job(),
              ),
            ),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
