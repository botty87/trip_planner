import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/features/google_places/domain/entities/place_details.dart';
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart';
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart';

part 'error_widget.dart';
part 'loading_widget.dart';
part 'text_input_widget.dart';
part 'suggestions_widget.dart';

class GooglePlacesSuggestionsWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function(PlaceDetails?) onSuggestionSelected;

  const GooglePlacesSuggestionsWidget(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.onSuggestionSelected});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GooglePlacesCubit>(
      create: (context) => getIt(),
      child: Column(
        children: [
          const _LoadingWidget(),
          _TextInputWidget(labelText: labelText, hintText: hintText),
          _SuggestionsWidget(onSuggestionSelected: onSuggestionSelected),
        ],
      ),
    );
  }
}
