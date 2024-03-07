part of '../locator.dart';

void _setupBloc() {
  locator.registerFactory<MainPageCubit>(
    () => MainPageCubit(locator()),
  );
}
