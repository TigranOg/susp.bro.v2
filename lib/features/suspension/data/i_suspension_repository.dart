import 'package:suspension_bro/features/suspension/domain/model/suspension_model.dart';

abstract class ISuspensionRepository {
  void saveSuspension(SuspensionModel suspensionModel);
  SuspensionModel getSuspension();
}