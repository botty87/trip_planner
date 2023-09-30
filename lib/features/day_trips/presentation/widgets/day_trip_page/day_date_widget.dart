part of '../../pages/day_trip_page.dart';

class _DayDateWidget extends StatelessWidget {
  final DateTime _date;

  const _DayDateWidget({required DateTime date}) : _date = date;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMMd().format(_date),
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
