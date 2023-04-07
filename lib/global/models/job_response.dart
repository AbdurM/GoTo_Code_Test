import 'package:goto_code_test/global/models/job.dart';

class JobResponse {
  late List<Job> jobs;

  JobResponse({required this.jobs});

  JobResponse.fromJson(Map<String, dynamic> json) {
    if (json['documents'] != null) {
      jobs = <Job>[];
      json['documents'].forEach((v) {
        jobs.add(Job.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['documents'] = jobs.map<dynamic>((v) => v.toJson()).toList();

    return data;
  }
}
