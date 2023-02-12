class Apple extends Fruit{
  int? price;
  Apple(this.price):super(price);
  
  void printFruit(){
    print('Apple : $price');
  }
  
}


// Set Class Banana
class Banana extends Fruit{
  int? price;
  Banana(this.price): super(price);
  void printFruit(){
    print('Banana : $price');
  }
}


void main() {
  // Call Class Apple, Banana
  Apple apple=Apple(20);
  Banana banana=Banana(30);
  
  // Print apple, banana's printFruit()
  apple.printFruit();
  banana.printFruit();

}
