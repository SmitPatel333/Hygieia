import 'dart:math';

class LevelingSystem {
  //Variables for current points and levels, will be optimised later 
    var points = 0;
    var level = 0;

    //Temporary variables for recommended values
    var recommendedtimes = [];
    var recommendedcalories = 0; 

    LevelingSystem(this.recommendedtimes, this.recommendedcalories);
    
    getpoints(){
        return points;
    }

    getlevel(){
        return level;
    }

    /*
        Function to give points as follows:
        Eating at the recommended times = 20 points per occurence (breakfast, lunch, dinner)
        Eating within the recomended calories count = 20 points
        Doing both in a day = bonus 40 points
    */
    givepoints(List eatingtimes, int caloriesconsumed){
        if ((eatingtimes == recommendedtimes) && recommendedcalories - 100 <= caloriesconsumed && caloriesconsumed <= recommendedcalories + 100) {
          points += 120;
        }
        else {
            if(recommendedcalories - 100 <= caloriesconsumed && caloriesconsumed <= recommendedcalories + 100){
                points += 20;
            }
            for (var i = 0; i < eatingtimes.length; i++){
                var time = eatingtimes[i];
                var recommendation = recommendedtimes[i];
                if (time == recommendation){
                    points += 20;
                }
            }
        }
    }
        
    /*
        Function to level up, it calculates the number of levels that you increase by 
        and subtracts the relevant number of points
        100 points/level until level 5
        200 points/level until level 15
        300 points/level until level 35
        500 points/level until level 50
    */
    levelup() {
      if (level < 5){
        if (points >= 100) {
          var increase = points/100;
          var inc = increase.floor();
          level += inc;
          points -= inc*100;
        }
      }
      else if (level < 15){
        if (points >= 200) {
          var increase = points/200;
          var inc = increase.floor();
          level += inc;
          points -= inc*200;
        }        
      }
      else if (level < 35){
        if (points >= 300) {
          var increase = points/300;
          var inc = increase.floor();
          level += inc;
          points -= inc*300;
        }
      }
      else {
        if (points >= 500) {
          var increase = points/500;
          var inc = increase.floor();
          level += inc;
          points -= inc*500;
        }
      }
    }
}