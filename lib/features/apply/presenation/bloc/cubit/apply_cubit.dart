import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:jobs_tdd/features/apply/domain/useCases/apply_usecase.dart';


part 'apply_state.dart';
part 'apply_cubit.freezed.dart';

@injectable
class ApplyCubit extends Cubit<ApplyState> {
  final ApplyUseCase applyUseCase; 
  ApplyCubit(this.applyUseCase) : super(const ApplyState.initial());

  Future<void> apply(ApplyInfo applyInfo) async {
    await applyUseCase.call(applyInfo).then((value) {
      value;
      value?.fold(
        (l) => {},
        (r) => {emit(ApplyState.apply(r))},
      );
    });
  }
}
