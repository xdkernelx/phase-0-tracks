//Nestor Alvarez

var horses = ["Ed", "Edd", "Eddy", "Ted"];
var colors = ["red", "white", "blue", "fuchsia"];
var horse_object = {};

horses.push("Eddie");
colors.push("green");

for(i = 0; i < horses.length; i++) {
    horse_object[horses[i]] = colors[i];
}

console.log(horse_object);