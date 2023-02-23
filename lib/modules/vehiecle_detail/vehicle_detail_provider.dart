import '../../util/api_client.dart';
import '../vehicle/vehicle_dm.dart';
import 'package:flutter/material.dart';

///
/// @author Darshan Prajapati
/// @version 1.0
/// @since 23/02/23 7:47 pm
///

class VehicleDetailProvider with ChangeNotifier {
  VehicleDm vehicleDm = VehicleDm();
  bool loading = false;

  getSingleVehicle(url) async {
    loading = true;
    vehicleDm = await getSingleVehicleData(url);
    loading = false;
    notifyListeners();
  }
}

Future<VehicleDm> getSingleVehicleData(url) async {
    final response = await ApiClient.get(url: url);
    return VehicleDm.fromJson(response);
}