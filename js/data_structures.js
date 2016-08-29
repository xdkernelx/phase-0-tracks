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

function Car(owner, year_made, cost) {
    this.owner = owner;
    this.year_made = year_made;
    this.cost = cost;
}

car1 = new Car("Nestor", 2011, 22000);
console.log(car1);
car1 = new Car("Alison", 2001, 2200);
console.log(car1);