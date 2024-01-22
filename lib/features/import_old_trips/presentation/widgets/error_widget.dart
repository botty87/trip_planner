part of '../pages/import_old_trips_page.dart';

class _ErrorWidget extends StatelessWidget {
  final String message;
  const _ErrorWidget({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: verticalSpace),
          ElevatedButton(
            onPressed: () {
              context.read<ImportOldTripsCubit>().reload();
            },
            child: Text(LocaleKeys.retry.tr()),
          ),
        ],
      ),
    );
  }
}
