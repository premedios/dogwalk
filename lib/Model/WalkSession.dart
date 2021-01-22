import './Dog.dart';

class WalkSession {
  final DateTime dateTime;
  final double duration;
  final double defectationCount;
  final Dog dog;

  WalkSession({this.dog, this.dateTime, this.duration, this.defectationCount});
}
