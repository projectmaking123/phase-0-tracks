var colors = ["red", "blue", "white", "yellow"];

var names = ["Sam", "Bob", "John", "Nick"];

function push(color, name){
  colors.push(color)
  names.push(name)
};
push("purple", "Jay");

console.log(colors);
console.log(names);

var horses = {};

function create(){
  for (var i = 0; i < colors.length; i++){
     horses[names[i]] = colors[i];
  }
};

create();
console.log(horses)


car = {model: "A", speed: 70}

function Car(model, speed){
  this.model = model
  this.speed = speed
  
  this.drive = function (){
    console.log(model + " travels at " + speed + " mph");
  }
}

var newCar = new Car("Z", 200)

console.log(newCar);
console.log(newCar.drive());

var newTruck = new Car("T", 120)

console.log(newTruck);
console.log(newTruck.drive());







