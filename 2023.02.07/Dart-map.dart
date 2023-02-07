void main() {
	// Declare a Map
  Map map1={
    'peter':'Software Engineer',
    'Minjin':'Cse student',
    'Park':'Parking',
  };
  
  print(map1);
  
	// Print all keys
  print(map1.keys.toList());

	// Print all Values
  print(map1.values);

	// Print key's Value
  print(map1['Park']);
}