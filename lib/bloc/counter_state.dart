
abstract class CounterState {
  const CounterState();

  get count => null;
}

class InitialState extends CounterState {
  @override
  final int count = 0;
}

class UpdatedState extends CounterState {
  @override
  final int count;

  const UpdatedState(this.count);

}
