class Car {
  String name = 'BMW';
  
  void run() {
    print('$name : running');
  }
  
  void setName(String name) {
    this.name = name;
  }
}

void main() {
  // Initialized Class Car in Main
  Car car=Car();
  
	// Call Car's Run Function
  car.run();
  
	// Call Car's SetName Function
  car.setName('Audi');
  
	// Call Car's Run Function
  car.run();
}