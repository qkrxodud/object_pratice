import 'airplane_state.dart';

class AirplaneGoodState {
  AirplaneState? _airplaneState;

  AirplaneState? getAirplaneState() {
    return _airplaneState;
  }

  void setAirplaneState(AirplaneState airplaneState) {
    _airplaneState = airplaneState;
  }

  String checkWheelStatus() {
    String result = _airplaneState!.checkWheelStatus();
    print("result[$result]");
    return result;
  }

  String checkElectronicStatus() {
    String result = _airplaneState!.checkElectronicStatus();
    print("result[$result]");
    return result;
  }

  String checkWingStatus() {
    String result = _airplaneState!.checkWingStatus();
    print("result[$result]");
    return result;
  }

  String checkMachinegunStatus() {
    String result = _airplaneState!.checkMachinegunStatus();
    print("result[$result]");
    return result;
  }

  String currentStatusExplanation() {
    String result = _airplaneState!.currentStatusExplanation();
    print("result[$result]");
    return result;
  }

}