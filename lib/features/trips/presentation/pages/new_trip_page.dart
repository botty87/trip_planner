import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip_cubit.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/stateless_cubit_widget.dart';
import '../../../../gen/assets.gen.dart';

@RoutePage()
class NewTripPage extends StatelessCubitWidget<NewTripCubit> {
  NewTripPage({super.cubit, super.key});

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.newTrip.tr()),
      ),
      body: BlocListener<NewTripCubit, NewTripState>(
        listenWhen: (previous, current) {
          return current.errorMessage != null;
        },
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            Snackbars.error(state.errorMessage!),
          );
        },
        child: Builder(builder: (context) {
          final cubit = context.read<NewTripCubit>();
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
                        key: Key('tripNameTextField'),
                        decoration: InputDecoration(
                          labelText: LocaleKeys.whatNameTrip.tr(),
                        ),
                        onChanged: (value) => cubit.tripNameChanged(value),
                      ),
                      const SizedBox(height: VERTICAL_SPACE),
                      TextField(
                        key: Key('tripDescriptionTextField'),
                        decoration: InputDecoration(
                          labelText: LocaleKeys.tripDescription.tr(),
                        ),
                        onChanged: (value) => cubit.tripDescriptionChanged(value),
                        maxLines: 4,
                        minLines: 1,
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      BlocSelector<NewTripCubit, NewTripState, bool>(
                        selector: (state) => state.isLoading,
                        builder: (context, isLoading) {
                          return ElevatedButton(
                            key: Key('createTripButton'),
                            child: Text(LocaleKeys.createTrip.tr()),
                            onPressed: isLoading
                                ? null
                                : () async {
                                    if (await cubit.createTrip()) {
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
    );
  }
}
