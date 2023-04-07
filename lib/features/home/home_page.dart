import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goto_code_test/features/home/widgets/job_item.dart';
import 'package:goto_code_test/global/constants/strings.dart';
import 'package:goto_code_test/global/models/job.dart';
import 'package:goto_code_test/global/providers.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final TextEditingController searchBarTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(futureJobsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appTitle),
      ),
      body: Column(
        children: [
          _renderSearchBar(context, ref),
          data.when(
              data: (data) {
                return _renderJobList(data);
              },
              error: ((error, stackTrace) => Center(
                    child: Text(
                      error.toString(),
                    ),
                  )),
              loading: () => const Center(child: CircularProgressIndicator())),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async =>
            await ref.read(jobsNotifierProvider.notifier).loadJobs(ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  Expanded _renderJobList(List<Job> data) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return JobItem(job: item);
        },
      ),
    );
  }

  Widget _renderSearchBar(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AnimSearchBar(
          width: MediaQuery.of(context).size.width,
          textController: searchBarTextController,
          suffixIcon: const Icon(Icons.clear),
          onSuffixTap: () {
            searchBarTextController.clear();
            ref.read(jobsNotifierProvider.notifier).resetSearch(ref);
          },
          onSubmitted: (searchTerm) {
            if (searchTerm != '') {
              ref.read(jobsNotifierProvider.notifier).search(searchTerm);
            }
          }),
    );
  }
}
