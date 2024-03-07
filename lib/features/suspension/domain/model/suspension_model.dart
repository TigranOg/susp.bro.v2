enum SuspensionType {
  fork,
  shock,
  none,
}

class SuspensionModel {
  final SuspensionType suspensionType;

  final int highSpeedCompression;
  final int lowSpeedCompression;
  final int highSpeedRebound;
  final int lowSpeedRebound;

  const SuspensionModel({
    required this.suspensionType,
    required this.highSpeedCompression,
    required this.lowSpeedCompression,
    required this.highSpeedRebound,
    required this.lowSpeedRebound,
  });

  const SuspensionModel.empty()
      : this(
          suspensionType: SuspensionType.none,
          lowSpeedCompression: -1,
          highSpeedCompression: -1,
          lowSpeedRebound: -1,
          highSpeedRebound: -1,
        );
}
