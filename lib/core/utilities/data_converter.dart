import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp dateTimeToTimestamp(DateTime dateTime) => Timestamp.fromDate(dateTime);

DateTime dateTimeFromTimestamp(Timestamp timestamp) => timestamp.toDate();