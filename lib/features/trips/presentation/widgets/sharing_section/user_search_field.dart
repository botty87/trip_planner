part of 'sharing_trip_section.dart';

class _UserSearchField extends StatelessWidget {
  const _UserSearchField();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _SearchTextField(),
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

class _SearchTextField extends HookWidget {
  const _SearchTextField();

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    //When the user adds a new user reset the text field
    return BlocListener<ShareCubit, ShareState>(
      listener: (context, state) => textEditingController.clear(),
      listenWhen: (previous, current) => current.maybeMap(
        userAdded: (_) => true,
        orElse: () => false,
      ),
      child: BlocSelector<ShareCubit, ShareState, String?>(
        selector: (state) => state.maybeMap(
          error: (state) => state.errorMessage,
          orElse: () => null,
        ),
        builder: (context, errorMessage) {
          return TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              labelText: LocaleKeys.userEmailShareTrip.tr(),
              errorText: errorMessage,
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            onChanged: (value) => context.read<ShareCubit>().onUserEmailQueryChanged(value),
            onSubmitted: (_) => context.read<ShareCubit>().addUser(),
          );
        },
      ),
    );
  }
}
