
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/trips/trips_cubit.dart';
import '../widgets/trips_page/no_trips_widget.dart';
import '../widgets/trips_page/trips_list_widget.dart';

part '../widgets/trips_page/drawer.dart';
part '../widgets/trips_page/body_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripsCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: BlocListener<TripsCubit, TripsState>(
          listener: (context, state) =>
              ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(state.errorMessage!)),
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage && current.errorMessage != null,
          child: const AnimatedSize(
            duration: Duration(milliseconds: 500),
            child: Center(child: _BodyWidget()),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushRoute(const NewTripRoute());
          },
          child: const Icon(Icons.add),
        ),
        drawer: const _Drawer(),
      ),
    );
  }
}
