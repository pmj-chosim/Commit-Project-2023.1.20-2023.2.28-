// Set Class Car
abstract class Car{
  int? speed;
  
  Car(this.speed);
  
  void move(){}
}


// Set Class Bus
class Bus implements Car{
  @override
  int? speed;
  
  Bus(this.speed);
  
  @override
  void move(){
    print('Bus speed : $speed');
  }
  
}


// Set Class SportsCar
class SportsCar implements Car{
  @override
  int? speed;
  
  SportsCar(this.speed);
  
  @override
  void move(){
    print('SportsCar speed : $speed');
  }
  
}



void main() {
  // Call Class Bus, SportsCar
  Bus bus=Bus(70);
  SportsCar sport=SportsCar(300);

  
  // Print bus, sportsCar's move()
  bus.move();
  sport.move();

}
