// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> newCustomAction(
  BuildContext context,
  LatLng location,
) async {
  // Create a correct link that can be used to go to Google Map and display the location
  String googleMapUrl =
      "https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}";
  return googleMapUrl;
}
