void main() {
	// Set Map
  
  Map menu={
    'hamburger':7,
    'coke':1,
    'sandwitch':5
  };
  print(menu);
  // Change coke's Value as 2
  menu['coke']=2;
  print(menu);
  
	// Declare Map Type Variable 
  Map shake={'shake':3};
  menu.addAll(shake);
	// Add 'shake' to Menu
  menu.addAll({'salad': 2});
  print(menu);
  
  // Remove 'sandwitch'
  menu.remove('sandwitch');
  print(menu);
	
  print({...menu});
}
