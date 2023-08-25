import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart';

class GooglePlacesSuggestionsWidget extends StatelessWidget {
  const GooglePlacesSuggestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GooglePlacesCubit>(
      create: (context) => getIt(),
      child: BlocBuilder<GooglePlacesCubit, GooglePlacesState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              context.read<GooglePlacesCubit>().fetchSuggestions('Ossimo');
            },
            child: Text('Fetch suggestions'),
          );
        },
      ),
    );
  }
}
