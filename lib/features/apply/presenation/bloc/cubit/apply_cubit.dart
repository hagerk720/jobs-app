import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:jobs_tdd/features/apply/domain/useCases/apply_usecase.dart';

import '../../../../../cores/locator.dart';

part 'apply_state.dart';
part 'apply_cubit.freezed.dart';

class ApplyCubit extends Cubit<ApplyState> {
  ApplyCubit() : super(ApplyState.initial());

  Future<void> apply(ApplyInfo applyInfo) async {
    // print(userSignUp.toModel());
    await locator.get<ApplyUseCase>().call(applyInfo).then((value) {
      value;
      value?.fold(
        (l) => {},
        (r) => {
          print(r),
          print("in cubit" + r.toString()),
          emit(ApplyState.apply(r))
        },
      );
    });
  }
}
