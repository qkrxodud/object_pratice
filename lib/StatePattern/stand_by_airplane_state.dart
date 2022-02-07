import 'airplane_state.dart';

class StandbyAirplaneState implements AirplaneState {
  @override
  String checkElectronicStatus() {
    String result = "통신 장비 꺼져 있는 상태 구현, 실제로는 관련 그래픽/효과 처리 로직이 구현됨.";
    return result;
  }

  @override
  String checkEngineStatus() {
    String result = "엔진이 꺼져 있는 상태 구현, 실제로는 관련 그래픽/효과 처리 로직이 구현됨.";
    return result;
  }

  @override
  String checkMachinegunStatus() {
    String result = "기관총 OFF 상태 구현, 실제로는 관련 그래픽/효과 처리 로직이 구현됨.";
    return result;
  }

  @override
  String checkWheelStatus() {
    String result = "바퀴가 열려 있는 상태 구현, 실제로는 관련 그래픽/효과 처리 로직이 구현됨.";
    return result;
  }

  @override
  String checkWingStatus() {
    String result = "날개 접혀 있는 상태 구현, 실제로는 관련 그래픽/효과 처리 로직이 구현됨.";
    return result;
  }

  @override
  String currentStatusExplanation() {
    String result = "비행기가 대기 상태 입니다.";
    return result;
  }

}