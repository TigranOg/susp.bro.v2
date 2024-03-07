import 'package:get_it/get_it.dart';
import 'package:suspension_bro/features/suspension/suspension.dart';
import 'package:suspension_bro/features/main_page/main_page.dart';

part 'bloc/bloc.dart';
part 'repository/repository.dart';
part 'use_case/use_case.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  await locator.reset();

  _setupBloc();
  _setupRepository();
  _setupUseCases();
}
