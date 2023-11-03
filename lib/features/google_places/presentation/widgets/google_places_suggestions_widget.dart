import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../domain/entities/place_details.dart';
import '../../domain/entities/suggestion.dart';
import '../cubit/google_places_cubit.dart';

part 'error_widget.dart';
part 'loading_widget.dart';
part 'text_input_widget.dart';
part 'suggestions_widget.dart';

class GooglePlacesSuggestionsWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function(PlaceDetails?) onSuggestionSelected;
  final String noInternetConnectionMessage;
  final String requestDeniedMessage;
  final String unknownErrorMessage;

  const GooglePlacesSuggestionsWidget(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.onSuggestionSelected,
      required this.noInternetConnectionMessage,
      required this.requestDeniedMessage,
      required this.unknownErrorMessage});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GooglePlacesCubit>(
      create: (context) => getIt(),
      child: Column(
        children: [
          const _LoadingWidget(),
          _TextInputWidget(
            labelText: labelText,
            hintText: hintText,
            noInternetConnectionMessage: noInternetConnectionMessage,
            requestDeniedMessage: requestDeniedMessage,
            unknownErrorMessage: unknownErrorMessage,
          ),
          _SuggestionsWidget(onSuggestionSelected: onSuggestionSelected),
        ],
      ),
    );
  }
}
