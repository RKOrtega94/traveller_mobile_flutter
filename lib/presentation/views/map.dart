import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traveller_mobile_flutter/providers/app_position_provider.dart';

class AppMap extends HookConsumerWidget {
  final List<Marker> markers;
  const AppMap({
    super.key,
    required this.markers,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(currentPositionProvider);
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(currentPosition.value?.latitude ?? 0,
            currentPosition.value?.longitude ?? 0),
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
              target: LatLng(currentPosition.value?.latitude ?? 0,
                  currentPosition.value?.longitude ?? 0),
              zoom: 14.4746,
            ),
          ),
        );
        controller.setMapStyle(
          '[{"featureType":"poi","stylers":[{"visibility":"off"}]}]',
        );
      },
    );
  }
}
