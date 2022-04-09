import 'package:flutter/material.dart';
import 'package:jobs_tdd/features/localization/presentaion/widget/language_picker.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: const [LanguagePicker()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}
