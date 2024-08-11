import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int? distanceCalculating(
  LatLng? userLocation,
  LatLng businessLocation,
) {
  double lat1 = userLocation!.latitude;
  double lon1 = userLocation.longitude;
  double lat2 = businessLocation!.latitude;
  double lon2 = businessLocation.longitude;
  const R = 6371e3; // metres
  double phi1 = lat1 * math.pi / 180; // φ, λ in radians
  double phi2 = lat2 * math.pi / 180;
  double deltaPhi = (lat2 - lat1) * math.pi / 180;
  double deltaLambda = (lon2 - lon1) * math.pi / 180;

  double a = math.sin(deltaPhi / 2) * math.sin(deltaPhi / 2) +
      math.cos(phi1) *
          math.cos(phi2) *
          math.sin(deltaLambda / 2) *
          math.sin(deltaLambda / 2);
  double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

  int distance = (R * c).toInt(); // in metres
  return distance;
}

DateTime endtime(DateTime startTime) {
  // add 60 minutes to startTime
  return startTime.add(Duration(minutes: 60));
}

int? countDownTimmer(
  DateTime endtime,
  DateTime now,
) {
  // Calculate the number of seconds remaining between now and endtime
  int? remainingSeconds = endtime.difference(now).inSeconds;
  return remainingSeconds;
}

double? tecnicianTotalCash(List<CashPayedRequestsRecord> list) {
  // The sum of the numbers in the value field in list
  double total = 0.0;
  for (var record in list) {
    total += record.value ?? 0.0;
  }
  return total;
}
