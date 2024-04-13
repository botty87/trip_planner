part of 'sharing_trip_section.dart';

class _UserSearchField extends StatelessWidget {
  const _UserSearchField();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: LocaleKeys.userEmailShareTrip.tr()),
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => context.read<ShareCubit>().onUserEmailQueryChanged(value),
        ),
        const SizedBox(height: verticalSpace),
        ElevatedButton.icon(
          onPressed: () => context.read<ShareCubit>().addUser(),
          icon: const Icon(Icons.add),
          label: Text(LocaleKeys.addUser.tr()),
        ),
      ],
    );
  }
}
