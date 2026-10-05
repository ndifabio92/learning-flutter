part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  final int counter;
  final int transactionCount;
  const CounterState({this.counter = 10, this.transactionCount = 0});

  CounterState copyWith({int? counter, int? transactionCount});

  @override
  List<Object> get props => [counter, transactionCount];
}

final class CounterInitial extends CounterState {
  const CounterInitial({int counter = 10, int transactionCount = 0})
    : super(counter: counter, transactionCount: transactionCount);

  @override
  CounterInitial copyWith({int? counter, int? transactionCount}) =>
      CounterInitial(
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount,
      );
}
