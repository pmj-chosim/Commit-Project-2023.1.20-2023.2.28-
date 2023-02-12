class Student {
  // Set String?, int? Type '_name', '_age'
  String? _name;
  int ? _age;

  
  // Make Class's Constructor
  Student(this._name, this._age);

  
  // Make name, age's Setter
  void setName(String name){
    _name=name;
  }

  
  // Make name, age's Getter
  void setAge(int age){
    _age=age;
  }
  
  String? getNmae(){
    return _name;
  }
  int? getAge(){
    return _age;
  }

}

void main() {
  // Call Class Student
  Student stu=Student('Minjin', 20);

  // Print Student's name, age
  print('${stu.getNmae()} : ${stu.getAge()}');

  // Call Student's Setter Function
  stu.setName('Minjin Park');
  stu.setAge(21);

  // Print Student's name, age
   print('${stu.getNmae()} : ${stu.getAge()}');
  
}