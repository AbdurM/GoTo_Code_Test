import 'package:goto_code_test/global/constants/app_constants.dart';
import 'package:goto_code_test/global/services/i_location_service.dart';

class LocationService implements ILocationService {
  @override
  bool isWithinNSW(double latitude, double longitude) {
    if (latitude >= AppConstants.nswMinLatitude &&
        latitude <= AppConstants.nswMaxLatitude &&
        longitude >= AppConstants.nswMinLongitude &&
        longitude <= AppConstants.nswMaxLongitude) {
      return true;
    } else {
      return false;
    }
  }
}
