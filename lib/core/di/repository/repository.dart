part of '../locator.dart';

void _setupRepository() {
  locator.registerFactory<ISuspensionRepository>(() => SuspensionRepository());
}
