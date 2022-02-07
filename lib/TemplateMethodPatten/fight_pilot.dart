import 'package:object_pratice/TemplateMethodPatten/airplane.dart';
import 'package:object_pratice/TemplateMethodPatten/pilot.dart';

class FightPilot extends Pilot {
  FightPilot(Airplane airplane, bool airplaneState) : super(airplane, airplaneState);

  @override
  bool checkAirplane() {
    print("전투 파일럿이 비행기를 체크합니다.");
    return true;
  }

  @override
  bool increaseSpeedOnLand() {
    print("전투 파일럿이 속도를 증가합니다.");
    return true;
  }

  @override
  bool intoCockpit() {
    print("전투 파일럿이 비행기를 탑니다.");
    return true;
  }

  @override
  bool takeOff() {
    print("전투 파일럿이 비행기를 이륙합니다..");
    return true;
  }

  @override
  bool turnOnAirplane() {
    print("전투 파일럿이 비행기 시동을 켭니다...");
    return true;
  }

  @override
  bool wheelIntoBody() {
    print("전투 파일럿이 비행기 바퀴를 넣습니다....");
    return true;
  }

}