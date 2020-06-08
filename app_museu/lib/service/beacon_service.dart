import 'dart:convert';

import 'package:app_museu/model/Beacon.dart';
import 'package:http/http.dart';

class BeaconService {
  final String appMuseuUrl =
      "https://museum-web-service.herokuapp.com/beacons/";

  Future<List<Beacon>> getBeacon(String name) async {
    Response res = await get("$appMuseuUrl/$name");

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Beacon> beacons =
          body.map((dynamic item) => Beacon.fromJson(item)).toList();

      return beacons;
    } else {
      throw "Can't get Beacon";
    }
  }
}
