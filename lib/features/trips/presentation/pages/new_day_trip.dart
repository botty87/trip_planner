import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/widgets/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/new_day_trip/new_day_trip_cubit.dart';

@RoutePage()
class NewDayTripPage extends StatelessWidget {
  NewDayTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewDayTripCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newDayTrip.tr()),
        ),
        body: BlocListener<NewDayTripCubit, NewDayTripState>(
          listenWhen: (previous, current) => current.errorMessage != null,
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              Snackbars.error(state.errorMessage!),
            );
          },
          child: Builder(builder: (context) {
            final cubit = context.read<NewDayTripCubit>();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BlocSelector<NewDayTripCubit, NewDayTripState, bool>(
                    selector: (state) => state.isSaving,
                    builder: (context, isSaving) {
                      if (isSaving) {
                        return LinearProgressIndicator(minHeight: 1);
                      } else {
                        return const SizedBox(height: 1);
                      }
                    }),
                Expanded(
                  child: SvgPicture(
                    key: Key('tripImage'),
                    AssetBytesLoader(Assets.svg.travelersSvg),
                  ),
                ),
                const SizedBox(height: VERTICAL_SPACE_L),
                Expanded(
                  child: SafeArea(
                    minimum: DEFAULT_PAGE_PADDING,
                    child: Column(
                      children: [
                        TextField(
                          key: Key('nameTextField'),
                          decoration: InputDecoration(
                            labelText: LocaleKeys.dayTripName.tr(),
                            hintText: LocaleKeys.dayTripNameHint.tr(),
                          ),
                          onChanged: (value) => cubit.nameChanged(value),
                        ),
                        const SizedBox(height: VERTICAL_SPACE),
                        TextField(
                          key: Key('descriptionTextField'),
                          decoration: InputDecoration(
                            labelText: LocaleKeys.dayTripDescription.tr(),
                            hintText: LocaleKeys.dayTripDescriptionHint.tr(),
                          ),
                          onChanged: (value) => cubit.descriptionChanged(value),
                          maxLines: 4,
                          minLines: 1,
                        ),
                        const SizedBox(height: VERTICAL_SPACE_L),
                        BlocSelector<NewDayTripCubit, NewDayTripState, bool>(
                          selector: (state) => state.isSaving,
                          builder: (context, isSaving) {
                            return ElevatedButton(
                              key: Key('addDayTripButton'),
                              child: Text(LocaleKeys.addDayTrip.tr()),
                              onPressed: isSaving
                                  ? null
                                  : () async {
                                      if (await cubit.createDayTrip()) {
                                        context.popRoute();
                                      }
                                      ;
                                    },
                            );
                          },
                        ),
                      ],
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
