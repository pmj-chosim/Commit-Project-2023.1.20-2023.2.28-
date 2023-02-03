void main() {
	// [String] into [int]
	// Set intNum, strInt
  int intNum;
  String strInt='50';

	// Cast strInt Type as Integer
  intNum=int.parse(strInt);
	print(50 + intNum);

	// [int] into [String]
  
	// Cast 1234 to '1234'
  strInt=1234.toString();
  print(strInt);

	// [String] into [double]
	// Set doubleNum, strDouble
  double doubleNum;
  String strDouble='3.14';

	// Cast strDouble Type as double'
  doubleNum=double.parse(strDouble);
	print(doubleNum);
  
  // [bool] into [String]
  bool boolVar=true;
  String boolType;

	// Cast boolType to String
  boolType=boolVar.toString();
  print(boolType);
}