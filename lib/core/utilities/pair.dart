final class Pair<Type1, Type2> {
  final Type1 first;
  final Type2 second;

  const Pair(this.first, this.second);

  @override
  String toString() => 'Pair[$first, $second]';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;

  @override
  int get hashCode => first.hashCode ^ second.hashCode;
}
