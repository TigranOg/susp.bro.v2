part of '../locator.dart';

void _setupUseCases() {
  locator
    ..registerFactory(() => SaveSuspensionUseCase(locator()))
    ..registerFactory(() => GetSuspensionUseCase(locator()));
}
