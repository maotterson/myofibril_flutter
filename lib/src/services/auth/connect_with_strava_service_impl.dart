import 'package:flutter/services.dart';
import 'package:myofibril_flutter/src/services/auth/connect_with_strava_service_abstract.dart';

class ConnectWithStravaServiceImpl extends ConnectWithStravaService {
  @override
  Future<String> getStravaToken() async {
    const platform = MethodChannel('intent');
    try {
      final String result = await platform.invokeMethod('getStravaToken');
      return result;
    } on PlatformException catch (e) {
      return e.message!; // todo do something better with the error
    }
  }
}
