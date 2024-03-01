import 'package:suspension_bro/features/suspension/domain/domain.dart';
import 'package:suspension_bro/features/suspension/domain/model/model.dart';

class MainPageState {
  final SuspensionModel suspensionModel;

  const MainPageState({required this.suspensionModel});

  MainPageState copyWith({required SuspensionModel suspensionModel}) {
    return MainPageState(suspensionModel: suspensionModel);
  }
}
