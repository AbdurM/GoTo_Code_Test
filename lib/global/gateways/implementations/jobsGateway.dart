import 'package:goto_code_test/global/gateways/base_gateway.dart';
import 'package:goto_code_test/global/gateways/endpoints.dart';
import 'package:goto_code_test/global/gateways/interfaces/i_jobs_gateway.dart';
import 'package:goto_code_test/global/models/job.dart';
import 'package:goto_code_test/global/models/job_response.dart';

class JobsGateway extends BaseGateway implements IJobsGateway {
  @override
  Future<List<Job>> postFindJobs(int limit, int skip) async {
    final bodyMap = {
      "collection": "jobs",
      "database": "goto",
      "dataSource": "DevCluster",
      "filter": {
        "jobLocations": {"\$ne": null}
      },
      "limit": limit,
      "skip": skip
    };

    final response =
        await post(endpoint: Endpoints.postFindJobs, body: bodyMap);
    final jobResponse = JobResponse.fromJson(response);

    return jobResponse.jobs;
  }
}
