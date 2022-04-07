import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/features/localization/presentaion/bloc/cubit/locale_cubit.dart';

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> languages = ["En", "Ar"];
    return DropdownButtonHideUnderline(
      child: DropdownButton<dynamic>(
        icon: const Icon(Icons.menu),
        items: languages.map(
          (lang) {
            return DropdownMenuItem(
              child: Center(
                child: Text(lang),
              ),
              value: lang,
              onTap: () {
                context.read<LocaleCubit>().toArabic();
              },
            );
          },
        ).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
