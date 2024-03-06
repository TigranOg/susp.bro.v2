import 'package:get_it/get_it.dart';
import 'package:suspension_bro/features/suspension/suspension.dart';

part 'repository/repository.dart';
part 'use_case/use_case.dart';

final GetIt locator = GetIt.instance;

Future<bool> setupLocator() async {
  await locator.reset();

  _setupRepository();
  _setupUseCases();

  return true;
}
