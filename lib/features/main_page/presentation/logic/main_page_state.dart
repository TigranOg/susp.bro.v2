import 'package:suspension_bro/features/suspension/domain/domain.dart';
import 'package:suspension_bro/features/suspension/domain/model/model.dart';

class MainPageState {
  final SuspensionModel forkModel;
  final SuspensionModel shockModel;

  const MainPageState({
    required this.forkModel,
    required this.shockModel,
  });

  const MainPageState.empty()
      : this(
          forkModel: const SuspensionModel.empty(),
          shockModel: const SuspensionModel.empty(),
        );

  MainPageState copyWith({
    SuspensionModel? forkModel,
    SuspensionModel? shockModel,
  }) {
    return MainPageState(
      forkModel: forkModel ?? this.forkModel,
      shockModel: shockModel ?? this.shockModel,
    );
  }
}
