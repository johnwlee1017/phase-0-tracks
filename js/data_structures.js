//Horses objects

var colors = ["raspberry ombre","purple", "metallic yellow", "sky blue"];
var names = ["Lola", "Horace", "Gracie", "Seabiscuit"];

colors.push("mandarin");
names.push("Tracy");

var horses = {};

if (colors.length == names.length) {
  for (var i=0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
  }
}
else {
  console.log("Names and Colors don't have the same length")
}

//Car constructor

function Car(color, year, maxSpeed) {

  this.color = color;
  this.year = year;
  this.maxSpeed = maxSpeed;
  this.boostMaxSpeed = function() {
    this.maxSpeed += 100;
    console.log("Yours max-speed is now " + maxSpeed);
  }
}

//Driver Code


console.log(colors);
console.log(names);
console.log(horses);

var mcQueen = new Car("red", 2017, 200);
console.log(mcQueen);
mcQueen.boostMaxSpeed();
console.log(mcQueen);