import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_user.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/login/cubit/login_cubit.dart';

import '../../../../cores/utils/shared_preferance.dart';
import '../widgets/login_page_title.dart';
import '../widgets/login_signup_btn.dart';

class LoginScreen extends StatelessWidget {
  String? email;
  String? password;
  GlobalKey<FormState> _formKey_login = GlobalKey<FormState>();
  LoginUser? user;
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginScreenTitle(title: "Jobs", subTitle: "welcome back!"),
                Form(
                  key: _formKey_login,
                  child: Column(
                    children: [
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
                            return 'enter your password';
                          } else {
                            password = value;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocConsumer<LoginCubit, LoginState>(
                      listener: (context, state) {
                        state.when(
                            initial: () {},
                            login: (response) async {
                              await MySharedPreferences.init();
                              await MySharedPreferences.setToken(
                                  response.token.toString());
                              await MySharedPreferences.setUserId(
                                  response.userEntiti?.id);
                              Navigator.pushNamed(context, "/jobs");
                            });
                      },
                      builder: (context, state) {
                        return LoginSignUpBtn(
                            btnText: "Login",
                            on_Pressed: () => {
                                  if (_formKey_login.currentState!.validate())
                                    {
                                      user = LoginUser(
                                          email: email, password: password),
                                      getData(user, context),
                                      Navigator.pushNamed(context, "/jobs")
                                    }
                                  else
                                    {print("fill fields correctly")}
                                });
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: Text(
                          "Sign UP",
                          style: TextStyle(color: Colors.amber),
                        ))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  void getData(LoginUser? user, context) {
    BlocProvider.of<LoginCubit>(context).loginUser(user!);
  }
}
