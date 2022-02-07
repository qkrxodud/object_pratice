class DefaultCockpit {
  int? _armorPower; // 조종석의 방어력
  int? _chairFunction; // 의자 기능성 수치
  int? _panelFunction; // 계기판 기능성 수치
  int? _comfortableFunction;// 조종석의 편의성 수치
  int? _escapeFunction;


  DefaultCockpit() {
    _armorPower = 50;
    _chairFunction = 50;
    _panelFunction = 50;
    _comfortableFunction = 50;
    _escapeFunction = 50;
  }
  //방어력 구현, 실제로는 방어력 관련 각종 로직이 구현됨.
  int? armorFeature() {
    return _armorPower;
  }

  //의자 기능 구현, 실제로는 의자 관련 각종 로직이 구현됨.
  int? chairFeature() {
    return _chairFunction;
  }

  //계기판 기능 구현, 실제로는 계기판판 관련각종 로직이 구현됨.
  int? panelFeature() {
    return _panelFunction;
  }

  //편의 장비 기능 구현, 실제로는 계기판판 관련각종 로직이 구현됨.
  int? comfortableFeature() {
    return _comfortableFunction;
  }

  //탈출 장비 기능 구현, 실제로는 계기판판 관련각종 로직이 구현됨.
  int? escapeFeature() {
    return _escapeFunction;
  }


}