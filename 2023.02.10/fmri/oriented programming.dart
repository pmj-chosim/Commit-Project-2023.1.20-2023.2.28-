class Student {
  // Set name and age
  String name='Peter';
  int age=25;
  
  // Make PrintStudent Function
  void printStudent(){
    print('My name is $name, and I am $age years old');
  }

}

void main() {
  // Call Class Student
  Student student=Student();

  
  // Call Class Student's Function PrintStudent
  student.printStudent();

}