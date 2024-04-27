part of 'sharing_trip_section.dart';

class _SharedUsersList extends StatelessWidget {
  const _SharedUsersList();

  @override
  Widget build(BuildContext context) {
    final sharedUsers = context.select((ShareCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.sharedUsers?.values.toList()?..sort((a, b) => a.compareTo(b)),
          orElse: () => null,
        ));

    //If shared it means that is still loading
    //Show a loading indicator
    if (sharedUsers == null) {
      return const Padding(
        padding: EdgeInsets.only(top: verticalSpace),
        child: Center(child: LinearProgressIndicator()),
      );
    }

    if (sharedUsers.isEmpty) {
      return Text(
        LocaleKeys.tripNotIsNotSharedWithAnyone.tr(),
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sharedUsers.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final user = sharedUsers[index];
        return ListTile(
          title: Text(user),
          leading: const Icon(Icons.person),
          trailing: IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
        );
      },
    );
  }
}
