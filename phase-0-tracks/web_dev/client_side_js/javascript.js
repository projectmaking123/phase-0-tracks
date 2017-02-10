console.log("Working")

function work(){
var newHeading = document.createElement('h1');
var test = document.getElementById("test");
var tag = document.getElementsByTagName("em");
test.children[0].style.border = "2px solid red"; 
test.appendChild(newHeading);
}

// work();

function loop(){
	var test = document.getElementById("test");
	var child = test.children;	
	array = [];
	for (var i = 0; i < child.length; i++) {
		if (i != 2){
		array.push(child[i])
		}
		for (var x = 0; x < array.length; x++) {
			array[x].style.border = "2px solid red";
		}
		
	};
}

var test = document.getElementById("test");
	var child = test.children;	
child[2].addEventListener("click", loop);


function work2(){
var tag = document.getElementsByTagName("em");
tag[0].style.border = "2px solid red";

}
// work2();

var newObject = {};

newObject.newPropName = "super fly";

newObject['other new prop name'] = "mildly fly";

console.log(newObject.newPropName);

delete newObject.newPropName;

console.log(newObject.newPropName
);

console.log(newObject);
