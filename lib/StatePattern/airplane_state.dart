abstract class AirplaneState {
  //바퀴 상태 체크
  String checkWheelStatus();

  //엔진 상태 체크
  String checkEngineStatus();

  //통신 장비 생태 체크
  String checkElectronicStatus();

  //날개 상태 체크
  String checkWingStatus();

  //기관총 상태 체크
  String checkMachinegunStatus();

  //현재 상태 클래스 정보
  String currentStatusExplanation();
}