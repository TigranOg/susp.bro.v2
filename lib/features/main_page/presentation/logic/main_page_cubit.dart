import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suspension_bro/features/suspension/domain/domain.dart';

import 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  final GetSuspensionUseCase _getSuspensionUseCase;

  MainPageCubit(GetSuspensionUseCase getSuspensionUseCase)
      : _getSuspensionUseCase = getSuspensionUseCase,
        super(const MainPageState.empty()) {
    init();
  }

  void init() {
    SuspensionModel forkModel = _getSuspensionUseCase.getSuspension();

    emit(state.copyWith(forkModel: forkModel));
  }
}
