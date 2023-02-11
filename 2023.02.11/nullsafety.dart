class Student {
  // Set String?, int? Type Named 'name', 'age'
  String? name;
  int ? age;
}

void main() {
  // Call Class 'student'
  Student student =Student();

  // Print student's name
  print(student.name);
  // Initialize student's name as 'peter'
  student.name="Peter";
  // Print student's name
  print(student.name);
  // Set Int Type 'age' as student's age
  int age=student.age ?? 25;
  // Print age
  print(student.age);
}