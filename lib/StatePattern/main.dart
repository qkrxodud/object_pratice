import 'package:object_pratice/StatePattern/stand_by_airplane_state.dart';
import 'airplane_good_state.dart';

void main() {
  AirplaneGoodState airplaneGoodState = AirplaneGoodState();
  airplaneGoodState.setAirplaneState(StandbyAirplaneState());
  airplaneGoodState.currentStatusExplanation();
  airplaneGoodState.checkWheelStatus();
  airplaneGoodState.checkElectronicStatus();
  airplaneGoodState.checkWingStatus();
  airplaneGoodState.checkMachinegunStatus();
}
