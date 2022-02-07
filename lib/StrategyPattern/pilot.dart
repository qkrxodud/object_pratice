import 'airplane.dart';
import 'hightech_on_default_cockpit.dart';

/**
 * 위기 발생
 * 첫째, 객체를 만들지 않고 분기처리로 하게 될시 조종석의 종류가 추가, 수정, 삭제될 때마다 if문을 일일이 다고쳐야 한다.
 * 두번째, 코드가 지저분해진다.
 *
 * Strategy 패턴은 '프로그램의 변경되는 부분을 찾아내서, 바뀌지 않는 부분으로부터 분리시킨다.'란 디자인 원칙이 처방되어있다.
 * '바뀌는 부분은 따로 뽑아서 캡슐화시킨다.'
 */

class Pilot {
  late Airplane airplane;

  Airplane intoCockpit() {
    airplane = Airplane(HightechOnDefaultCockpit()); //HightechOnDefaultCockpit 뿐만아니라 변경되는 부분을 수시로 변경할 수 있다. 객체를 생성해서.
    return airplane;
  }
}