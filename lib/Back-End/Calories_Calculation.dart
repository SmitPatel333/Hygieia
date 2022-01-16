import 'package:collection/collection.dart';

class CaloriesCalculation {
  var breakfastCaloriesTotal = 0;
  var lunchCaloriesTotal = 0;
  var dinnerCaloriesTotal = 0;
  var snackCaloriesTotal = 0;
  var totalCalories = 0;

  getBreakfastCalories(){
    return breakfastCaloriesTotal;
  }
  getLunchCalories(){
    return lunchCaloriesTotal;
  }
  getDinnerCalories(){
    return dinnerCaloriesTotal;
  }
  getSnackCalories(){
    return snackCaloriesTotal;
  }
  getTotalCalories(){
    return totalCalories;
  }

  reset() {
    breakfastCaloriesTotal = 0;
    lunchCaloriesTotal = 0;
    dinnerCaloriesTotal = 0;
    snackCaloriesTotal = 0;
    totalCalories = 0;
  }

  breakfastCalories(List breakfastItem) {
    breakfastCaloriesTotal = breakfastItem.reduce((value, element) => value + element);

    if (breakfastCaloriesTotal == 360) {
      print("Wow, perfectly balanced like everything should be.");
    }
    else if (breakfastCaloriesTotal < 360) {
      print("MORE! I want MORE!");
    }
    else if (breakfastCaloriesTotal > 360) {
      print("Hold up! I don't want to get diabetes.");
    }
  }

  lunchCalories(List lunchItem) {
    lunchCaloriesTotal = lunchItem.reduce((value, element) => value + element);

    if (lunchCaloriesTotal == 360) {
      print("Wow, perfectly balanced like everything should be.");
    }
    else if (lunchCaloriesTotal < 360) {
      print("I want MOREEEEEEEEEEE!");
    }
    else if (lunchCaloriesTotal > 360) {
      print("That's too much. qAq");
    }
  }

  dinnerCalories(List dinnerItem) {
    dinnerCaloriesTotal = dinnerItem.reduce((value, element) => value + element);

    if (dinnerCaloriesTotal == 360) {
      print("Perfectly Balance~");
    }
    else if (dinnerCaloriesTotal < 360) {
      print("You need to eat more!");
    }
    else if (dinnerCaloriesTotal > 360) {
      print("woo...You are not trying to get diabetes, right?");
    }
  }

  snackCalories(List snackItem) {
    dinnerCaloriesTotal = snackItem.reduce((value, element) => value + element);
  }

  finalCalories() {
    totalCalories = breakfastCaloriesTotal + lunchCaloriesTotal + dinnerCaloriesTotal + snackCaloriesTotal;

    if (totalCalories > 1100 && totalCalories < 1300) {
      print("Fitness is my passion!");
    }
    else if (totalCalories < 1100){
      print("I need MOREEEE!");
    }
    else if (totalCalories > 1300) {
      print("I am so fat... No bodys gonna like me... qAq");   
    }
  }
}