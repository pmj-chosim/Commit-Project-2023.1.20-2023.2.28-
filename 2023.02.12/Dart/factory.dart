class Person{
  // Make a Constructor
  Person();

}

// Create Class With Factory Constructor
class FactoryPerson{
  // Declare Static Instance Variable
  static final _singleton=FactoryPerson._internal();

  // Make Factory Constructor
  factory FactoryPerson()=>_singleton;

  // Make Named Private Constructor
  FactoryPerson._internal();

}

void main() {
  // Create Two Regular Class Instances
  var p1=Person();
  var p2=Person();


  // Create Two Factory Class Instances
  var factoryP1=FactoryPerson();
  var factoryP2=FactoryPerson();

  // Check If The Instances Are The Same
  if(p1==p2){
    print('same');
  }else{
    print('different');
  }


  // Check If The Factory Class Instances Are The Same
  if(factoryP1==factoryP2){
    print('same');
  }else{
    print('different');
  }

}
