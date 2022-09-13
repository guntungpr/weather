import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      event.map(
        started: (e) {
          emit(HomeState.initial());
        },
        indexChanged: (e) {
          emit(state.copyWith(activeIndex: e.index));
        },
      );
    });
  }
}
