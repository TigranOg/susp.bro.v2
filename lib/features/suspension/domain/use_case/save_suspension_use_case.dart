import 'package:suspension_bro/features/suspension/data/i_suspension_repository.dart';
import 'package:suspension_bro/features/suspension/domain/domain.dart';

class SaveSuspensionUseCase {
  final ISuspensionRepository iSuspensionRepository;

  SaveSuspensionUseCase(this.iSuspensionRepository);

  void saveSuspension(SuspensionModel suspensionModel) =>
      iSuspensionRepository.saveSuspension(suspensionModel);
}
