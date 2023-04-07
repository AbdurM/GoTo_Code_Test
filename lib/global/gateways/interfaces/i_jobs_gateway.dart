import 'package:goto_code_test/global/models/job.dart';

abstract class IJobsGateway {
  Future<List<Job>> postFindJobs(int limit, int skip);
}
