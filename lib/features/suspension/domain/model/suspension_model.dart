enum SuspensionType {
  fork,
  shock,
}

class SuspensionModel {
  final SuspensionType _suspensionType;

  final int _highSpeedCompression;
  final int _lowSpeedCompression;
  final int _highSpeedRebound;
  final int _lowSpeedRebound;

  SuspensionModel({
    required SuspensionType suspensionType,
    required int highSpeedCompression,
    required int lowSpeedCompression,
    required int highSpeedRebound,
    required int lowSpeedRebound,
  })  : _suspensionType = suspensionType,
        _highSpeedCompression = highSpeedCompression,
        _lowSpeedCompression = lowSpeedCompression,
        _highSpeedRebound = highSpeedRebound,
        _lowSpeedRebound = lowSpeedRebound;
}
