import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goto_code_test/global/constants/colors.dart';
import 'package:goto_code_test/global/constants/route_names.dart';
import 'package:goto_code_test/global/constants/strings.dart';
import 'package:goto_code_test/global/models/job.dart';

class JobItem extends StatelessWidget {
  const JobItem({super.key, required this.job});
  final Job job;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTapJobItem(context),
      child: Card(
        color: AppColors.lightGray,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.jobTitle ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      job.company?.companyName ?? '',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(child: Text(job.industryInfo?.industryName ?? '')),
                  const SizedBox(width: 8),
                  Flexible(child: Text(job.jobLocations?.first.city ?? '')),
                ],
              ),
              const SizedBox(height: 5),
              Text(job.description ?? ''),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapJobItem(BuildContext context) {
    final latitude = job.jobLocations?.first.coordinates?.last;
    final longitude = job.jobLocations?.first.coordinates?.first;
    context.goNamed(
      RouteNames.mapPage,
      queryParams: <String, String>{
        Strings.latitude: latitude.toString(),
        Strings.longitude: longitude.toString(),
      },
    );
  }
}
