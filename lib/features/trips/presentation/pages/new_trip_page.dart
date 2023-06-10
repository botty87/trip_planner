import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';

@RoutePage()
class NewTripPage extends StatelessWidget {
  const NewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.newTrip.tr()),
      ),
      body: Center(
        child: Text('NewTripPage'),
      ),
    );
  }
}