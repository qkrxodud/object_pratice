class Airplane {
  int? _airplaneSpeed;
  bool? _airplaneSuitableLift;
  String? _airplaneState;
  String? _wheelState;
  int? _airplaneAltitude;

  Airplane() {
    _airplaneSpeed = 0;
    _airplaneSuitableLift = false;
    _airplaneState = "";
    _wheelState = "";
    _airplaneAltitude = 0;
  }

  //비행기를 점검을 합니다.
  bool checkAirplane() {
    bool result = false;
    print("비행기를 점검합니다.");
    result = true;
    print("비행기가 정상입니다.");
    return result;
  }

  //비행기 시동을 켭니다.
  bool turnOnAirplane() {
    bool result = false;
    print("비행기 시동을 켭니다. 아직은 시동 켰다고 가정");
    result = true;
    print("비행기가 정상입니다.");
    return result;
  }

  //땅 위에서 비행기 속도를 증가합니다.
  bool? increaseSpeedOnLand() {
    _airplaneSpeed = 296;
    print("비행기 속도가 $_airplaneSpeed 입니다. 비행기가 적당한 양력을 얻었다고 가정하고.");
    _airplaneSuitableLift = true;
    print("양력이 $_airplaneSuitableLift입니다.");
    return _airplaneSuitableLift;
  }

  //이륙합니다.
  String? takeOff() {
      print("이륙시도...");
      _airplaneState = "비행";
      print("비행기 상태가 [$_airplaneState]입니다.");
      _airplaneAltitude = 1000;
      print("비행기 고도는 [$_airplaneAltitude]입니다.");
      return _airplaneState;
  }

  String? wheelInBody() {
    _wheelState = "바퀴숨김";
    print("비행기 바퀴는 [$_wheelState] 상태 입니다.");
    return _wheelState;
  }
}