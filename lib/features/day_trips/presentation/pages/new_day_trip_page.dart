import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/widgets/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/new_day_trip/new_day_trip_cubit.dart';

part '../widgets/new_day_trip_page/description_widget.dart';
part '../widgets/new_day_trip_page/add_day_trip_button.dart';

@RoutePage()
class NewDayTripPage extends StatelessWidget {
  final String _tripId;
  NewDayTripPage({super.key, @pathParam required String tripId}) : _tripId = tripId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewDayTripCubit>(
      create: (context) => getIt(param1: _tripId),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newDayTrip.tr()),
        ),
        body: const _NewDayTripPageBody(),
      ),
    );
  }
}

class _NewDayTripPageBody extends HookWidget {
  const _NewDayTripPageBody();

  @override
  Widget build(BuildContext context) {
    //On error show snackbar
    useBlocListener<NewDayTripCubit, NewDayTripState>(context.read(), (bloc, state, context) {
      ScaffoldMessenger.of(context).showSnackBar(
        Snackbars.error(state.errorMessage!),
      );
    }, listenWhen: (current) => current.errorMessage != null);

    //On success show snackbar and pop
    useBlocListener<NewDayTripCubit, NewDayTripState>(context.read(), (bloc, state, context) {
      ScaffoldMessenger.of(context).showSnackBar(
        Snackbars.success(LocaleKeys.dayTripCreated.tr()),
      );
      context.router.pop();
    }, listenWhen: (current) => current.createSuccess);

    return SafeArea(
      minimum: DEFAULT_PAGE_PADDING,
      child: Column(
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
              AssetBytesLoader(Assets.svg.addNewDayTripSvg),
            ),
          ),
          const SizedBox(height: VERTICAL_SPACE_L),
          Expanded(
            child: Column(
              children: const [
                _DescriptionWidget(),
                SizedBox(height: VERTICAL_SPACE_L),
                _AddDayTripButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
