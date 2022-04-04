import 'package:equatable/equatable.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';


class Data extends Equatable {
 final List<Job>? data;
 final String? message;

 const Data({required this.data,required this.message});

  @override
  List<Object?> get props => throw UnimplementedError();

}
