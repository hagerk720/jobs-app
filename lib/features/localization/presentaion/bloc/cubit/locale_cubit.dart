import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_state.dart';
part 'locale_cubit.freezed.dart';

@injectable
class LocaleCubit extends Cubit<LocaleState> {
 // LocaleCubit() : super(const Locale("en"));
   LocaleCubit() : super(const LocaleState.initial());
   void toArabic() => emit( LocaleState.locale("ar"));
  /*void toArabic(context) async {
    print("heeeere"); 
    emit(const Locale('ar', ''));
  }*/
  // void toEnglish() => emit(const LocaleState.locale(Locale("en")));
}
