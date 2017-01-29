function times(n){
  var array = []
  for (var i = 0; i <= n; i++){
    array.push(Math.random().toString(36).replace(/[^a-z]+/g, '').substr(1, 10))
  }
  return array;
}

console.log(times(5))

function longSearch(array){
  var a = [];
  var max = 0;
  
  for (var i = 0; i < array.length; i += 1){
    if (array[i].length > max){
      max = array[i].length;
      a.push(array[i]);
    }
  }
  return a[a.length-1];
}

console.log(longSearch(["long phrase","longest phrase","longer phrase", "dfbgsdfhbgdkahbgdfb"]));
console.log(longSearch(times(5)))

function objectSearch(ob1, ob2){
  
  if (ob1.name === ob2.name){
    return true;
  }else if (ob1.age === ob2.age){
    return true;
  }else{
    return false;
  }
} 
a = {nae: "Steven", ge: 54}
b = {name: "Steven", age: 54}
console.log(objectSearch(a, b));
