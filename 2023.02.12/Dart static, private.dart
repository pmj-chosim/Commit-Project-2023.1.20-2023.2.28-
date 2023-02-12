class Student {
  // Set static String Type 'name'
  static String name='peter';
  
  // Set Private int Type '_age'
  int _age=25;  //변수 앞에 _붙으면 private
  
  // Make Function that can Print 'name'
  void printName(){
    return print(name);
  }
}

void main() {
  // Call Class Student
  Student student=Student();
  
  // Call Student's function 'printName'
  student.printName();
  
  // Print Student's '_age'
  print(student._age);
  student._age=20; //이게 왜 되는 거지?
  print(student._age);
}
