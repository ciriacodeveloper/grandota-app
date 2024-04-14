import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';

const LatLng sourceLocation = LatLng(-11.89691, -77.03414);
const LatLng destLocation = LatLng(-11.89982, -77.03268);
const double cameraZoom = 16;
const double cameraTilt = 50;
const double cameraBearing = 20;

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  final Set<Marker> _markers = <Marker>{};

  late LatLng currentLocation;
  late LatLng destinationLocation;

  @override
  void initState() {
    super.initState();
    // set up initial location
    setInitialLocation();

    //set up the marker icons
    setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        devicePixelRatio: 2.0
      ),
      'assets/images/map.png'
    );
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
            devicePixelRatio: 2.0
        ),
        'assets/images/map.png'
    );
  }

  void setInitialLocation() {
    currentLocation = LatLng(
        sourceLocation.latitude,
        sourceLocation.longitude
    );
    destinationLocation = LatLng(
        destLocation.latitude,
        destLocation.longitude
    );
  }


  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = const CameraPosition(
      zoom: cameraZoom,
      tilt: cameraTilt,
      bearing: cameraBearing,
      target: sourceLocation,
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 3.0))
                        ],
                      ),
                      child: const Icon(
                        LineIcons.angleLeft,
                        size: 25,
                        color: Color(0xff62b621),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Detalle de mi pedido',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
                      subtitle: Text('Gracias por elegir Gandota.',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12),maxLines: 2,overflow: TextOverflow.ellipsis),
                      contentPadding: const EdgeInsets.only(left: 15),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: GoogleMap(
                          myLocationEnabled: true,
                          compassEnabled: false,
                          tiltGesturesEnabled: false,
                          markers: _markers,
                          mapType: MapType.normal,
                          initialCameraPosition: initialCameraPosition,
                          onMapCreated: (GoogleMapController controller){
                            _controller.complete(controller);

                            showPinsOnMap();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

  void showPinsOnMap(){
    setState(() {
      _markers.add(Marker(
          markerId: const MarkerId('sourcePin'),
          position: currentLocation,
          icon: sourceIcon
      ));

      _markers.add(Marker(
          markerId: const MarkerId('destinationPin'),
          position: destinationLocation,
          icon: destinationIcon
      ));
    });
  }

}
