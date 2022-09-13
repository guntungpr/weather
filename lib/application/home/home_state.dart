part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int activeIndex,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(activeIndex: 0);
}
