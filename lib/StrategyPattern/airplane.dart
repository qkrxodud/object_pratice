import 'default_cockpit.dart';

class Airplane {
  int armorPower = 100;
  late DefaultCockpit _cockpit;

  Airplane(DefaultCockpit cockpit) {
    _cockpit = cockpit;
    armorPower += _cockpit.armorFeature()!;
  }

  int? armorFeature() {
    return _cockpit.armorFeature();
  }

  int? chairFeature() {
    return _cockpit.chairFeature();
  }

  int? panelFeature() {
    return _cockpit.panelFeature();
  }

  int? comfortableFeature() {
    return _cockpit.comfortableFeature();
  }

  int? escapeFeature() {
    return _cockpit.escapeFeature();
  }
}