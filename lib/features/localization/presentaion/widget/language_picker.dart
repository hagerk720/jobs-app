import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobs_tdd/features/localization/presentaion/bloc/cubit/locale_cubit.dart';

class LanguagePicker extends StatefulWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  State<LanguagePicker> createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  String languageValue = "En";
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
                if (lang == "Ar") {
                  context.read<LocaleCubit>().toArabic();
                } else if (lang == "En") {
                  context.read<LocaleCubit>().toEnglish();
                }
              },
            );
          },
        ).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
