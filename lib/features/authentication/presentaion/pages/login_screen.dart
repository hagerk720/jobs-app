import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/presentaion/bloc/login/cubit/login_cubit.dart';
import 'package:jobs_tdd/features/authentication/presentaion/widgets/login_page_title.dart';
import 'package:jobs_tdd/features/authentication/presentaion/widgets/login_signup_btn.dart';
import 'package:jobs_tdd/features/localization/presentaion/widget/custom_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  String? email;
  String? password;
  LoginUser? user;
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    GlobalKey<FormState> _formKey_login = GlobalKey<FormState>();

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: CoustomAppBar(),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      Divider(
                        color: Theme.of(context).colorScheme.onPrimary,
                        height: 3,
                        thickness: 5,
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
                      Divider(
                        color: Theme.of(context).colorScheme.onPrimary,
                        height: 3,
                        thickness: 5,
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
                              Navigator.pushNamed(context, "/jobs");
                            },
                            error: (String error) {
                              Fluttertoast.showToast(
                                  msg: error,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            },
                            loading: () {
                              return const CircularProgressIndicator();
                            });
                      },
                      builder: (context, state) {
                        return LoginSignUpBtn(
                            btnText: AppLocalizations.of(context)!
                                .login,
                            onPressed: () => {
                                  if (_formKey_login.currentState!.validate())
                                    {
                                      user = LoginUser(
                                          email: email, password: password),
                                      getData(user, context),
                                    }
                                  else
                                    {}
                                });
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: Text(
                          "Sign UP",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
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

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }

  void getData(LoginUser? user, context) {
    BlocProvider.of<LoginCubit>(context).loginUser(user!);
  }
}
