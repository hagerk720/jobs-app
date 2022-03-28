import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:jobs_tdd/cores/locator.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/login/cubit/login_cubit.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/pages/jobs_screen.dart';

import 'features/apply/presenation/bloc/cubit/apply_cubit.dart';
import 'features/apply/presenation/pages/apply_job_screen.dart';
import 'features/authentication/presentaion/pages/login_screen.dart';
import 'features/authentication/presentaion/pages/sign_up_screen.dart';
import 'features/jobs_list/presentation/pages/home_screen.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginScreen(),
            ),
        '/sign_up': (context) => BlocProvider(
              create: (context) => SignupCubit(),
              child: SignUpScreen(),
            ),
        '/jobs': (context) => BlocProvider(
              create: (context) => JobCubit(),
              child: JobsScreen(),
            ),
        '/apply': (context) => BlocProvider(
              create: (context) => ApplyCubit(),
              child: ApplyJobScreen(),
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
