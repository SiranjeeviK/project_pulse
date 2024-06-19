// create table
//   public.batches (
//     batch_id integer not null,
//     graduation_year integer not null,
//     admission_year integer not null,
//     batch_name text not null,
//     constraint batches_pkey primary key (batch_id),
//     constraint batches_graduation_admission_unique unique (graduation_year, admission_year),
//     constraint batches_batch_id_graduation_check check ((batch_id = graduation_year)),
//     constraint graduation_year_check check ((graduation_year > admission_year))
//   ) tablespace pg_default;

import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/batch.dart';

class BatchModel extends Batch {
  BatchModel({
    required super.batchId,
    required super.graduationYear,
    required super.admissionYear,
    required super.batchName,
  });

@override
  BatchModel copyWith({
    int? batchId,
    int? graduationYear,
    int? admissionYear,
    String? batchName,
  }) {
    return BatchModel(
      batchId: batchId ?? this.batchId,
      graduationYear: graduationYear ?? this.graduationYear,
      admissionYear: admissionYear ?? this.admissionYear,
      batchName: batchName ?? this.batchName,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the user.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batch_id'] = batchId;
    map['graduation_year'] = graduationYear;
    map['admission_year'] = admissionYear;
    map['batch_name'] = batchName;
    return map;
  }

  /// Creates a user instance from a `Map<String, dynamic>`.
  factory BatchModel.fromMap(Map<String, dynamic> map) {
    return BatchModel(
      batchId: map['batch_id'] ?? 0,
      graduationYear: map['graduation_year'] ??0,
      admissionYear: map['admission_year'] ??0,
      batchName: map['batch_name'] ??'',
    );
  }

  /// Converts this instance of `UserModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a user instance from a JSON string.
  factory BatchModel.fromJson(String source) => BatchModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}