import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_state_notifier.freezed.dart';

@freezed
class AthleteState with _$AthleteState {
  const AthleteState._();
  const factory AthleteState({
    @Default('') String firstName,
    @Default(0) int age,
    @Default(0) int counter,
    String? message,
  }) = _AthleteState;
}

class AthleteStateNotifier extends StateNotifier<AthleteState> {
  AthleteStateNotifier() : super(const AthleteState());

  void generateWelcome() {
    state = state.copyWith(
      message: 'Welcome ${state.firstName} ${state.counter}',
    );
    incrementCounter();
  }

  void setFirstName(String value) {
    state = state.copyWith(firstName: value);
    generateWelcome();
  }

  void setAge(int value) {
    state = state.copyWith(age: value);
  }

  void setCounter(int value) {
    state = state.copyWith(counter: value);
  }

  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
