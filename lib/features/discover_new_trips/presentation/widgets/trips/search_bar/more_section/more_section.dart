part of '../../../../pages/discover_new_trips_page.dart';

class _MoreSection extends StatelessWidget {
  const _MoreSection();

  @override
  Widget build(BuildContext context) {
    final isOpen = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.isMoreSectionOpen,
          orElse: () => false,
        ));

    return AnimatedSizeAndFade.showHide(
      show: isOpen,
      fadeDuration: const Duration(milliseconds: 300),
      sizeDuration: const Duration(milliseconds: 300),
      child: _buildWidget(context, isOpen),
    );
  }

  Widget _buildWidget(BuildContext context, bool isOpen) {
    if (!isOpen) return const SizedBox.shrink();

    return const Padding(
        padding: EdgeInsets.only(top: verticalSpaceS),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DescriptionSearch(),
            _LanguagesFilter(),
          ],
        ));
  }
}
