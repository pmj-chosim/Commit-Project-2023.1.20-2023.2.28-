class Employee {
  // Set String? Type Named 'name', 'role'
  String ? name;
  String ? role;
  
  // Make Employee's Constructor
  Employee(this.name, this.role);
  
  // Make Employee's Constructor Using Named Constructor
  Employee.designer(this.name){
    role='Designer';
  }
}

void main() {
  // Call Class Employee as 'employee' Using Simple Constructor
  Employee employee=Employee('Minjin', 'Developer');
  
  // print employee's name and role
  print('${employee.name} : ${employee.role}');
  
  // Call Class Employee as 'employee2' Using Named Constructor
    Employee employee2=Employee.designer('Park');
  // print employee2's name and role
  print('${employee2.name} : ${employee2.role}');
  
}
