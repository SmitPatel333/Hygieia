import 'Calories_Calculation.dart';
import 'Calories_Size.dart';
import 'Character.dart';
import 'Leveling.dart';


class Back_End {
  var littleH = Character(LevelingSystem([8, 13, 20], 1200), 1); 
  var calorieCalculator = CaloriesCalculation();
  var materials = [1, 0, 0, [], []];
  
  eatFood(String mealtype, List foods) {
    var foodList = foods;
    var refinedList = caloriesadjustement(foodList);

    switch(mealtype.toLowerCase()) {
      case "breakfast":
        calorieCalculator.breakfastCalories(refinedList);
        break;
      case "lunch":
        calorieCalculator.lunchCalories(refinedList);
        break;
      case "dinner":
        calorieCalculator.dinnerCalories(refinedList);
        break;
      case "snack":
        calorieCalculator.snackCalories(refinedList);
        break;
    }

    var time = DateTime.now().hour;
    littleH.updatetimeeaten(time);
  }

  calorieTotal() {
    calorieCalculator.finalCalories();
    littleH.updatetimeeaten(calorieCalculator.totalCalories);
  }

  endDay() {
    calorieTotal();
    littleH.endofday();
    calorieCalculator.reset();
    if (materials[0] == 6) {
      materials[0] = 0;
    }
    else {
      //materials[0] += 1;
    }
  }
}