import 'package:flutter/material.dart';
import 'package:webelight_assignment/modules/vehicle/vehicle_dm.dart';
import 'package:webelight_assignment/util/api_client.dart';


///
/// @author Darshan Prajapati 
/// @version 1.0
/// @since 23/02/23 7:31 pm
/// 

class VehicleDataProvider with ChangeNotifier {
  List<VehicleDm> vehicleList = [];
  bool loading = false;

  getVehicleData(context) async {
    loading = true;
    vehicleList = await getAllVehicleData();
    loading = false;
    notifyListeners();
  }
}

Future<List<VehicleDm>> getAllVehicleData() async {
  List<VehicleDm> vehicleList = [];
  try {
    final response = await ApiClient.get();
    response['results'].forEach((element){
      vehicleList.add(VehicleDm.fromJson(element));
    });
  } catch (e) {
  }
  return vehicleList;
}