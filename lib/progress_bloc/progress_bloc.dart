import 'package:bloc/bloc.dart';
import 'progress_event.dart';
import 'progress_state.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc() : super(ProgressState(0.0)) {
    on<IncreaseProgress>((event, emit) {
      if (state.progress < 100) {
        emit(ProgressState(state.progress + 10));
      }
    });
    on<DecreaseProgress>((event, emit) {
      if (state.progress > 0) {
        emit(ProgressState(state.progress - 10));
      }
    });
  }
}
