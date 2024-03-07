import 'package:suspension_bro/features/suspension/domain/model/suspension_model.dart';

import 'i_suspension_repository.dart';

class SuspensionRepository implements ISuspensionRepository {
  @override
  void saveSuspension(SuspensionModel suspensionModel) {}

  @override
  SuspensionModel getSuspension() {
    return const SuspensionModel(
      suspensionType: SuspensionType.fork,
      highSpeedCompression: 5,
      lowSpeedCompression: 6,
      highSpeedRebound: 7,
      lowSpeedRebound: 8,
    );
  }
}
