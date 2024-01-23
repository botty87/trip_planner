import 'package:flutter/material.dart';

class GenericInitialWidget extends StatelessWidget {
  const GenericInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(milliseconds: 500)),
      builder: (context, snapshot) {
        final Widget child;
        if (snapshot.connectionState == ConnectionState.done) {
          child = const Center(child: CircularProgressIndicator.adaptive());
        } else {
          child = const SizedBox.shrink();
        }

        return AnimatedSwitcher(duration: const Duration(milliseconds: 300), child: child);
      },
    );
  }
}
