import 'package:equatable/equatable.dart';

class Job extends Equatable{
final  String? description;
final  String? nameJob;
final  int? idJob;
 const Job({this.nameJob, this.description, this.idJob});

  @override
  List<Object?> get props => [];
}
