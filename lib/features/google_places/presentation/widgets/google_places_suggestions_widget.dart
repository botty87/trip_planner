import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart';

part 'error_widget.dart';
part 'loading_widget.dart';
part 'suggestions_widget.dart';

class GooglePlacesSuggestionsWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  const GooglePlacesSuggestionsWidget({super.key, required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GooglePlacesCubit>(
      create: (context) => getIt(),
      child: Column(
        children: [
          const _LoadingWidget(),
          _TextInputWidget(labelText: labelText, hintText: hintText),
        ],
      ),
    );
  }
}
