import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_position_provider.dart';
import 'package:traveller_mobile_flutter/presentation/views/destinations/horizontal_destinations.dart';

class MapView extends ConsumerStatefulWidget {
  const MapView({super.key});

  @override
  MapViewState createState() => MapViewState();
}

class MapViewState extends ConsumerState<MapView> {
  @override
  Widget build(BuildContext context) {
    final currentPosition = ref.watch(positionProvider);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: currentPosition.when(
            data: (data) {
              final Position position = data!;
              return Stack(
                children: [
                  Positioned.fill(
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: LatLng(
                          position.latitude,
                          position.longitude,
                        ),
                        zoom: 14.4746,
                      ),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      mapToolbarEnabled: false,
                      compassEnabled: false,
                      buildingsEnabled: false,
                      onMapCreated: (controller) {
                        controller.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                              target: LatLng(
                                  currentPosition.value?.latitude ?? 0,
                                  currentPosition.value?.longitude ?? 0),
                              zoom: 14.4746,
                            ),
                          ),
                        );
                        controller.setMapStyle(
                          '[{"featureType":"poi","stylers":[{"visibility":"off"}]}]',
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: const DestinationsHorizontal(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            error: (error, stacktrace) => const Text("Error"),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
