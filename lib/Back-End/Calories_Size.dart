
picksize(List food) {
  var calorieslist = [];
  for (var i = 0; i < food.length; i++) {
    calorieslist.add(food[i][1]);
  }
  return calorieslist;
}

caloriessize (List calories) {
  var sizelist = ["Small", "Medium", "Large", "Large"];
  var updatelist = [];
  for (var i = 0; i < calories.length; i++) {
    switch(sizelist[i]) {
      case "Small":
        calories[i] /= 2;
        break;
      case "Medium":
        calories[i] *= 1;
        break;
      case "Large":
        calories[i] *= 2;
        break;
    }
    updatelist.add(calories[i]);
  }
  return updatelist;
}

caloriesadjustement(List foodlist) {
  var size = picksize(foodlist);
  var calorielist = caloriessize(size);
  return calorielist;
}