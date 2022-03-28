import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_data_response.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart';
import 'package:jobs_tdd/features/authentication/presentaion/widgets/login_page_title.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/pages/jobs_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/signup/signup_user.dart';
import '../widgets/login_signup_btn.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? confirmPassword;

  String? name;

  String? email;

  String? password;
  UserSignup? user;
  SignupDataResponse? response;
  GlobalKey<FormState> _formKey_signup = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginScreenTitle(title: "Jobs", subTitle: "welcome!"),
            Form(
              key: _formKey_signup,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'text is empty or not valid email';
                      } else {
                        name = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: (String? value) {
                      if (value == null || !isEmail(value)) {
                        return 'text is empty or not valid email';
                      } else {
                        email = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'password is empty ';
                      } else {
                        password = value;
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'confirm password',
                    ),
                    validator: (String? value) {
                      if (value == password) {
                        confirmPassword = value;
                      } else {
                        final snackBar =
                            SnackBar(content: const Text('not matched'));
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            BlocConsumer<SignupCubit, SignupState>(
              listener: (context, state) {
                print(state);
                state.when(
                    initial: () {},
                    signup: (response) async {
                      await MySharedPreferences.init();
                      await MySharedPreferences.setToken(
                          response.token.toString());
                      await MySharedPreferences.setUserId(
                          response.user?.id);
                      Navigator.pushReplacementNamed(context, "/jobs");
                    });
              },
              builder: (context, state) {
                return LoginSignUpBtn(
                    btnText: "SignUp",
                    on_Pressed: () => {
                          if (_formKey_signup.currentState!.validate())
                            {
                              user = UserSignup(
                                  name: name,
                                  email: email,
                                  password: password,
                                  confirmPassword: confirmPassword),
                              getData(user),
                            }
                          else
                            {print("error")},
                        });
              },
            ),
          ],
        ),
      ),
    );
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  void getData(UserSignup? user) {
    BlocProvider.of<SignupCubit>(context).signupUser(user!);
  }
}
