import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webelight_assignment/modules/vehiecle_detail/vehicle_detail_provider.dart';

///
/// @author Darshan Prajapati
/// @version 1.0
/// @since 23/02/23 7:46 pm
///

class VehicleDetailScreen extends StatefulWidget {
  String? name;
  String? url;

  VehicleDetailScreen(this.name, this.url);

  @override
  _VehicleDetailScreenState createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {
  @override
  void initState() {
    final vehicleProvider =
        Provider.of<VehicleDetailProvider>(context, listen: false);
    vehicleProvider.getSingleVehicle(widget.url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vehicleModel = Provider.of<VehicleDetailProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Hero(tag: widget.name ?? '', child: Text(widget.name ?? '')),
      ),
      body: vehicleModel.loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                getRowText('Model', vehicleModel.vehicleDm.model),
                getRowText('Manufacturer', vehicleModel.vehicleDm.manufacturer),
                getRowText('Length', vehicleModel.vehicleDm.length),
                getRowText(
                    'Cargo Capacity', vehicleModel.vehicleDm.cargoCapacity),
              ],
            ),
    );
  }

  getRowText(key, value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: Text(
            key,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
          Expanded(child: Text(value))
        ],
      ),
    );
  }
}
