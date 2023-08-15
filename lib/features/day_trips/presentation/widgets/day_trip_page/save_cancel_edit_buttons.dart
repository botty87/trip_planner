part of '../../pages/day_trip_page.dart';

class _SaveCancelEditButtons extends StatelessWidget {
  final Stream<bool> _isSaving;
  final VoidCallback _onCancel;
  final VoidCallback _onSave;
  final Stream<String?> _errorMessage;

  const _SaveCancelEditButtons({
    required Stream<bool> isSaving,
    required VoidCallback onCancel,
    required VoidCallback onSave,
    required Stream<String?> errorMessage,
  })  : _isSaving = isSaving,
        _onCancel = onCancel,
        _onSave = onSave,
        _errorMessage = errorMessage;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: _isSaving,
        builder: (context, snapshot) {
          final isSaving = snapshot.data ?? false;

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: isSaving ? null : _onCancel,
                    child: Text(
                      LocaleKeys.cancel.tr(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: isSaving ? null : _onSave,
                    child: Text(LocaleKeys.save.tr()),
                  ),
                ],
              ),
              SizedBox(height: VERTICAL_SPACE_S),
              _ErrorMesage(errorMessage: _errorMessage),
            ],
          );
        });
  }
}

class _ErrorMesage extends StatelessWidget {
  final Stream<String?> _errorMessage;

  const _ErrorMesage({required Stream<String?> errorMessage}) : _errorMessage = errorMessage;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: _errorMessage,
      builder: (context, snapshot) {
        final errorMessage = snapshot.data;

        return errorMessage == null
            ? SizedBox.shrink()
            : Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              );
      },
    );
  }
}
