import 'package:equatable/equatable.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';


class Data extends Equatable {
 final List<Job>? dataEntity;
 final String? messageEntity;

 const Data({required this.dataEntity, required this.messageEntity});

  @override
  List<Object?> get props => [];

}
