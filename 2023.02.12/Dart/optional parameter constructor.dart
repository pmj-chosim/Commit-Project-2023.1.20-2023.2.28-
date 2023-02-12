class Resume {
  // Set String?, int? Type 'name', 'major' and 'age'
  String? name;
  String? major;
  int? age;
  // Make Resume's Named Optional Parameter Constructor
  Resume({this.name, this.major, this.age});
}

void main() {
  // Call Class Resume using Named Optional Parameter Constructor
  Resume resume=Resume(name:'Minjin', major:'Cse');


  // Print Resume's 'name', 'major' and 'age'
  print('name : ${resume.name}');
  print('major : ${resume.major}');
  print('age : ${resume.age ?? 21}');
}
