import 'package:suspension_bro/features/suspension/data/data.dart';
import 'package:suspension_bro/features/suspension/domain/domain.dart';

class GetSuspensionUseCase {
  final ISuspensionRepository iSuspensionRepository;

  GetSuspensionUseCase(this.iSuspensionRepository);

  SuspensionModel getSuspension() => iSuspensionRepository.getSuspension();
}
