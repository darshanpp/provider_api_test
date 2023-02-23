import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webelight_assignment/constants/string_constants.dart';
import 'package:webelight_assignment/modules/vehicle/vehicle_dm.dart';
import 'package:webelight_assignment/modules/vehicle/vehicle_provider.dart';
import 'package:webelight_assignment/modules/vehiecle_detail/vehicle_detail_screen.dart';

///
/// @author Darshan Prajapati
/// @version 1.0
/// @since 23/02/23 7:55 pm
///

class VehicleListingScreen extends StatefulWidget {
  const VehicleListingScreen({Key? key}) : super(key: key);

  @override
  _VehicleListingScreenState createState() => _VehicleListingScreenState();
}

class _VehicleListingScreenState extends State<VehicleListingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vehicleModel = Provider.of<VehicleDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.vehicles),
      ),
      body: vehicleModel.vehicleList.isNotEmpty
          ? ListView.builder(
              itemCount: vehicleModel.vehicleList.length,
              itemBuilder: (context, index) {
                VehicleDm vehicleDm = vehicleModel.vehicleList[index];
                return ListTile(
                  title: Hero(
                      tag: vehicleDm.name ?? '',
                      child: Text(vehicleDm.name ?? ''),
                      flightShuttleBuilder: (flightContext, animation,
                          direction, fromContext, toContext) {
                        return Text(
                          vehicleDm.name ?? '',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        );
                      }),
                  subtitle: Text(vehicleDm.manufacturer ?? ''),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VehicleDetailScreen(
                                vehicleDm.name, vehicleDm.url)));
                  },
                );
              })
          :  Center(
              child: Text(StringConstants.noVehicles),
            ),
    );
  }
}
