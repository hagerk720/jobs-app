import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ApplyInfo extends Equatable {
  
  final int? userId;
  
  final int? jobId;
 
  final int? expectedSalary;
  
  final int? currentSalary;

  final File? fileCV;
  const ApplyInfo({
    this.fileCV,
    this.currentSalary,
    this.expectedSalary,
    this.userId,
    this.jobId,
  });
  @override
  List<Object?> get props => [];
}
