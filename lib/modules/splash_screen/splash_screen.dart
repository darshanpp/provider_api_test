import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webelight_assignment/modules/vehicle/vehicle_listing_screen.dart';

import '../vehicle/vehicle_provider.dart';

///
/// @author Darshan Prajapati
/// @version 1.0
/// @since 23/02/23 7:23 pm
///

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    final vehicleModel = Provider.of<VehicleDataProvider>(context, listen: false);
    vehicleModel.getVehicleData(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final vehicleModel = Provider.of<VehicleDataProvider>(context);
    if(!vehicleModel.loading){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VehicleListingScreen()));
      });
    }

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(size: 64,),
            SizedBox(
              height: 16,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
