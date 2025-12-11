import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String getDateTime() {
  // get current date time based on user's zone in this format mm/dd/yyyy hh:nn AM/PM
  final now = DateTime.now();
  final formatter = DateFormat('MM/dd/yyyy hh:mm a');
  final formattedDate = formatter.format(now);
  return formattedDate;
}
