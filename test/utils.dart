import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class TestUtils {
  static Widget defaultWidgetCubits<C extends Cubit>({required Widget child, required List<C> cubits}) => MaterialApp(
        home: ResponsiveBreakpoints(
          breakpoints: const [
            Breakpoint(start: 0, end: 450, name: MOBILE),
            Breakpoint(start: 451, end: 1000, name: TABLET),
            Breakpoint(start: 1001, end: 1920, name: DESKTOP),
            Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
          child: MultiBlocProvider(
            providers: _getProviders(cubits: cubits),
            child: Scaffold(
              body: child,
            ),
          ),
        ),
      );

    static _getProviders<C extends Cubit>({required List<C> cubits}) {
      final providers = <BlocProvider<C>>[];
      for (final cubit in cubits) {
        providers.add(BlocProvider(
          create: (context) => cubit,
        ));
      }
      return providers;
    }

  static Widget defaultWidget(Widget child) => MaterialApp(
        home: ResponsiveBreakpoints(
          breakpoints: const [
            Breakpoint(start: 0, end: 450, name: MOBILE),
            Breakpoint(start: 451, end: 1000, name: TABLET),
            Breakpoint(start: 1001, end: 1920, name: DESKTOP),
            Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
          child: Scaffold(
            body: child,
          ),
        ),
      );
}
