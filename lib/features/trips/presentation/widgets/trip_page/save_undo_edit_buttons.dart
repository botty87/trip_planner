part of '../../pages/trip_page.dart';

class _SaveUndoEditButtons extends StatelessWidget {
  const _SaveUndoEditButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TripCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => cubit.cancelEditing(),
          child: Text(
            LocaleKeys.cancel.tr(),
          ),
        ),
        ElevatedButton(
          onPressed: () => cubit.saveChanges(),
          child: Text(LocaleKeys.save.tr()),
        ),
      ],
    );
  }
}
