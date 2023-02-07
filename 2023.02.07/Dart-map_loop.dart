void main() {
	// Initialize map
  Map map={
    'name':'Park',
    'major':'cse',
    'age':21
  };
	// Map Loop Using forEach
  map.forEach((k,value){
    print('key:$k, value:$value');
  });
  
  map.keys.forEach(print);
  map.values.forEach(print);
  map.entries.forEach(print);
  
  print('');
  
	// Map Loop Using for-in Loop
  for(var k in map.keys){
    print('key: $k, value: ${map['k']}');
  }
}