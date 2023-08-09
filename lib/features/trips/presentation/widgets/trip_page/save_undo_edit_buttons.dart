part of '../../pages/trip_page.dart';

class _SaveUndoEditButtons extends StatelessWidget {
  final BuildContext _ctx;
  const _SaveUndoEditButtons({required BuildContext context}) : _ctx = context;

  @override
  Widget build(BuildContext context) {
    final cubit = _ctx.read<TripCubit>();

    return BlocSelector<TripCubit, TripState, bool>(
      bloc: cubit,
      selector: (state) => state is TripStateEditing && state.isSaving,
      builder: (context, isSaving) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isSaving
                      ? null
                      : () {
                          cubit.cancelEditing();
                          _ctx.router.pop();
                        },
                  child: Text(
                    LocaleKeys.cancel.tr(),
                  ),
                ),
                ElevatedButton(
                  onPressed: isSaving
                      ? null
                      : () async {
                          final success = await cubit.saveChanges();
                          if (success) {
                            _ctx.router.pop();
                          }
                        },
                  child: Text(LocaleKeys.save.tr()),
                ),
              ],
            ),
            _ErrorMesage(cubit: cubit),
          ],
        );
      },
    );
  }
}

class _ErrorMesage extends StatelessWidget {
  final TripCubit _cubit;

  const _ErrorMesage({required TripCubit cubit}) : _cubit = cubit;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TripCubit, TripState, String?>(
      bloc: _cubit,
      selector: (state) => state.errorMessage,
      builder: (context, errorMessage) {
        return errorMessage != null
            ? Column(
                children: [
                  SizedBox(height: VERTICAL_SPACE),
                  Text(
                    errorMessage,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}
