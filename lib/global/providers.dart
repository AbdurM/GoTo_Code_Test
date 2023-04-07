import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goto_code_test/global/gateways/implementations/jobsGateway.dart';
import 'package:goto_code_test/global/gateways/interfaces/i_jobs_gateway.dart';
import 'package:goto_code_test/global/models/job.dart';
import 'package:goto_code_test/global/services/i_location_service.dart';
import 'package:goto_code_test/global/services/location_service.dart';

final jobsGatewayProvider = Provider<IJobsGateway>((ref) => JobsGateway());
final locationServiceProvider =
    Provider<ILocationService>((ref) => LocationService());

final pageNumberProvider = StateProvider((ref) => 0);

final futureJobsProvider = FutureProvider<List<Job>>((ref) async {
  return ref.watch(jobsNotifierProvider);
});

final jobsNotifierProvider = StateNotifierProvider<JobsNotifier, List<Job>>(
    (ref) => JobsNotifier(ref.read(jobsGatewayProvider)));

class JobsNotifier extends StateNotifier<List<Job>> {
  JobsNotifier(this._jobsGateway) : super([]);

  final IJobsGateway _jobsGateway;

  Future<void> loadJobs(WidgetRef ref) async {
    final pageNumberController = ref.read(pageNumberProvider.notifier);
    final newData =
        await _jobsGateway.postFindJobs(50, pageNumberController.state);
    final locationService = ref.read(locationServiceProvider);

    final jobsInNSW = newData.where((element) {
      final latitude = element.jobLocations?.first.coordinates?.last;
      final longitude = element.jobLocations?.first.coordinates?.first;
      return locationService.isWithinNSW(latitude!, longitude!);
    });

    if (jobsInNSW.isNotEmpty) {
      state = [...state, ...jobsInNSW];
      state = state.toSet().toList();
    }
    pageNumberController.state++;
  }

  void search(String searchTerm) async {
    if (state.isEmpty) {
      return;
    }

    final searchResults = state.where((job) {
      final jobTitle = job.jobTitle?.toLowerCase() ?? '';
      final companyName = job.company?.companyName?.toLowerCase() ?? '';
      final industryName = job.industryInfo?.industryName?.toLowerCase() ?? '';
      final suburb = job.jobLocations?.first.city?.toLowerCase() ?? '';
      final description = job.description?.toLowerCase() ?? '';

      searchTerm = searchTerm.toLowerCase();

      return jobTitle.contains(searchTerm) ||
          companyName.contains(searchTerm) ||
          industryName.contains(searchTerm) ||
          suburb.contains(searchTerm) ||
          description.contains(searchTerm);
    });
    state = [...searchResults];
  }

  void resetSearch(WidgetRef ref) {
    state = [];
    loadJobs(ref);
  }
}
