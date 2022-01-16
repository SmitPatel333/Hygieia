import 'Leveling.dart';

class Character {
  var levelsystem;
  var days = 1;
  var timeeaten = [];
  var totalcalories = 0;


  Character(this.levelsystem, this.days);

  getday() {
    return days;
  }

  updatetimeeaten(int time) {
    timeeaten.add(time);
  }

  updatetotalcalories(int calories) {
    calories = calories;
  }

  endofday() {
    levelsystem.givepoints(timeeaten, totalcalories);
    levelsystem.levelup();

    print("Day:" + days.toString());
    print("Points:" + levelsystem.getpoints().toString());
    print("Level:" + levelsystem.getlevel().toString());

  }
}