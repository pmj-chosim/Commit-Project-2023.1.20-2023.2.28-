class Menu {
  // Set Map 'menu'
  Map<String, int> menu={
    'Hambuger':8,
    'Sandwitch':6,
    'Coke':2
  };

  
  // Make 'printMenu' Function -> Print All Maps' Keys, Values
  void printMenu(){
    for(var m in menu.keys){
      print('$m: ${menu[m]}');
    }
  }

}

void main() {
  // Call Class Menu
  Menu menu=Menu();

  
  // Call Class Menu's Function 'printMenu'
  menu.printMenu();

}
