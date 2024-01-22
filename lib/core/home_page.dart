import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDualRing(
          color: Theme.of(context).primaryColor,
          size: 50.0,
          duration: const Duration(milliseconds: 800),
        ),
      ),
    );
  }
}
