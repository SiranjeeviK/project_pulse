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


class Batch {
  final int batchId;
  final int graduationYear;
  final int admissionYear;
  final String batchName;

  Batch({
    required this.batchId,
    required this.graduationYear,
    required this.admissionYear,
    required this.batchName,
  });

  Batch copyWith({
    int? batchId,
    int? graduationYear,
    int? admissionYear,
    String? batchName,
  }) {
    return Batch(
      batchId: batchId ?? this.batchId,
      graduationYear: graduationYear ?? this.graduationYear,
      admissionYear: admissionYear ?? this.admissionYear,
      batchName: batchName ?? this.batchName,
    );
  }
}