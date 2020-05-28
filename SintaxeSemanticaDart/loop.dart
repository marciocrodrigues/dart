main() {

  var array = [1,2,3,4,5,6,7];
  
  //loop
  //for
  for (var i = 0; i < array.length; i++) {
    print(array[i]);
  }

  //for in
  for (var item in array) {
    print(item);
  }

  // while
  var i = 0;

  while (i < array.length) {
    print(array[i]);
    i++;
  }
}