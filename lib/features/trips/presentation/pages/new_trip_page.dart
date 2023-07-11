import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart';

import '../../../../core/widgets/snackbars.dart';

part '../widgets/new_trip_page/create_trip_button.dart';
part '../widgets/new_trip_page/start_date_picker.dart';
part '../widgets/new_trip_page/trip_description_text_field.dart';
part '../widgets/new_trip_page/trip_name_text_field.dart';

@RoutePage()
class NewTripPage extends StatelessWidget {
  NewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newTrip.tr()),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => current.errorMessage != null,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.error(state.errorMessage!),
                );
              },
            ),
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => current.createSuccess,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.success(LocaleKeys.tripCreated.tr()),
                );
                context.router.pop();
              },
            ),
          ],
          child: Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BlocSelector<NewTripCubit, NewTripState, bool>(
                    selector: (state) => state.isLoading,
                    builder: (context, isLoading) {
                      if (isLoading) {
                        return LinearProgressIndicator(minHeight: 1);
                      } else {
                        return const SizedBox(height: 1);
                      }
                    }),
                const SizedBox(height: VERTICAL_SPACE_L),
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                      padding: DEFAULT_PAGE_PADDING,
                      child: Column(
                        children: [
                          _TripNameTextField(key: Key('tripNameTextField')),
                          const SizedBox(height: VERTICAL_SPACE),
                          _TripDescriptionTextField(key: Key('tripDescriptionTextField')),
                          const SizedBox(height: VERTICAL_SPACE_L),
                          _StartDatePicker(key: Key('startDatePicker')),
                          const SizedBox(height: VERTICAL_SPACE_L),
                          _CreateTripButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
