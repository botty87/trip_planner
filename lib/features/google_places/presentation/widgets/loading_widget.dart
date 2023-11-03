part of 'google_places_suggestions_widget.dart';

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    final bool isLoading = context.select<GooglePlacesCubit, bool>((cubit) {
      return cubit.state.maybeWhen(
        normal: (_, isLoading, __) => isLoading,
        orElse: () => false,
      );
    });
    return Visibility(
        visible: isLoading,
        child: const LinearProgressIndicator(
          minHeight: 1,
        ));
  }
}
