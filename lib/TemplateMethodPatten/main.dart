import 'package:object_pratice/TemplateMethodPatten/airplane.dart';
import 'package:object_pratice/TemplateMethodPatten/fight_pilot.dart';
import 'package:object_pratice/TemplateMethodPatten/pilot.dart';

void main() {
  Pilot pilot = FightPilot(Airplane(), false);
  pilot.takeOffProcess();
}
