import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/snackbars.dart';
import '../cubit/trips/trips_cubit.dart';
import '../widgets/trips_page/no_trips_widget.dart';
import '../widgets/trips_page/trips_list_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripsCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: _TripsPageAppBar(),
        ),
        body: BlocListener<TripsCubit, TripsState>(
          listener: (context, state) =>
              ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(state.errorMessage!)),
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage && current.errorMessage != null,
          child: const Center(child: _BodyWidget()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushRoute(const NewTripRoute());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select<TripsCubit, bool>((cubit) => cubit.state.isLoading);
    if (isLoading) {
      return const CircularProgressIndicator.adaptive();
    }

    final areTripsEmpty = context.select<TripsCubit, bool>((cubit) => cubit.state.trips.isEmpty);
    return areTripsEmpty ? const NoTripsWidget() : const TripsListWidget();
  }
}

class _TripsPageAppBar extends StatelessWidget {
  const _TripsPageAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(LocaleKeys.tripsPageTitle.tr()),
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () => context.pushRoute(const AccountRoute()),
        ),
      ],
    );
  }
}
