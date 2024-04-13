part of '../../pages/trip_page.dart';

_showEditingModalBottom(BuildContext context, StreamController<bool> isSaving,
    ObjectRef isModalBottomOpen, StreamController<String?> errorMessage) {
  final cubit = context.read<TripCubit>();
  isModalBottomOpen.value = true;
  final deviceLocale = getIt<Locale>(instanceName: deviceLocaleKey);

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useRootNavigator: true,
    isDismissible: false,
    useSafeArea: true,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: NewEditTripForm(
          onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
          onNameChanged: (String value) => cubit.nameChanged(value),
          onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
          onLanguageCodeChanged: (String value) => cubit.languageCodeChanged(value),
          saveSection: SaveCancelEditButtons(
            isSaving: isSaving.stream,
            onCancel: () => cubit.modalBottomEditingDismissed(),
            onSave: () => cubit.saveChanges(),
            errorMessage: errorMessage.stream,
          ),
          isSaving: isSaving.stream,
          initialTripName: cubit.state.trip.name,
          initialTripDescription: cubit.state.trip.description,
          initialStartDate: cubit.state.trip.startDate,
          onIsPublicChanged: (bool value) => cubit.isPublicChanged(value),
          initialIsPublic: cubit.state.trip.isPublic,
          initialLanguageCode: cubit.state.trip.languageCode ?? deviceLocale.languageCode,
        ),
      );
    },
  ).then((_) {
    isModalBottomOpen.value = false;
    cubit.modalBottomEditingDismissed();
  });
}
