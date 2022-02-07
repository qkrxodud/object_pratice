import 'airplane.dart';
/**
 * 위기 발생
 * 비행기 게임에서 요구사항이 추가됐다. 파일럿의 종류가 추가, 디폴트 파일럿, 전투기 파일럿, 폭격기 파일럿, 정찰기 파일럿이 추가됐다.
 * 각각의 파일럿을 3명의 다른 개발자가 맡아 각자 구현하기로 했다. 일단 개발자들은 같은 파일럿 클래스들이니 삿옥을 쓰기로 합의했다.
 * 하지만 3일뒤 모여서 확인 한 결과 표준 철차가 누락된것을 확인하였다.
 * */

/**
 * 해결방법 '제어의 흐름을 보호'하자.
 */

abstract class Pilot {
  late Airplane _airplane;
  late bool _airplaneState;


  // 생성자, 파일럿을 생성할 때 파일럿이 탈 비행기도 정한다.
  Pilot(this._airplane, this._airplaneState);

  // 파일럿의 이륙 표준 프로세스
  bool takeOffProcess() {
    bool result = false;

    // 조종석에 올라탄다. 현재 비행기 상태를 리턴한다.
    intoCockpit();

    //비행기 시동을 켠다.
    bool turnOnResult = turnOnAirplane();

    bool isGoodAirplane = false;
    if (turnOnResult) {
      isGoodAirplane = checkAirplane();
    } else {
      print("비행기 구동 중에 문제가 발생했습니다.");
    }

    bool increaseSpeedResult = false;
    if (isGoodAirplane) { // 비행기 체크가 정상 인가
      increaseSpeedResult = increaseSpeedOnLand();
    } else {
      print("비행기 체크 중에 문제가 발생했습니다.");
    }

     bool isProperAltitude = false;
    if (increaseSpeedResult) { // 비행기 속도가 적절하게 증가했는가
      isProperAltitude = takeOff();
    } else {
      print("이륙에 필요한 적절한 속도를 얻는데 문제가 발생했습니다.");
    }

    if (isProperAltitude) { //적절한 고도를 얻었는가.
      _airplaneState = wheelIntoBody();
      //바퀴를 닫고 순항 상태로 전환한다.
    } else {
      print("아직 적절한 고도에 오르지 못했습니다.");
    }

    return result;
  }

  // 파일럿이 비행기에 올라탄다.
  bool intoCockpit();

  // 파일럿이 비행기를 체크합니다.
  bool checkAirplane();

  // 비행기 시동을 켭니다.
  bool turnOnAirplane();

  //땅 위에서 비행기 속도를 증가합니다.
  bool increaseSpeedOnLand();

  //이륙합니다.
  bool takeOff();

  //바퀴를 안으로 집어넣는다.
  bool wheelIntoBody();

}