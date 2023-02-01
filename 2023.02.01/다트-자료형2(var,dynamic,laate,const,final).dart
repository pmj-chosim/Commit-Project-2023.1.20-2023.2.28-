void main() {
  // var type variable
  var v=10; //아무 자료형 값 적어도 됨
  print(v); //자료형 적고나선 바꿀 수 없음. 10은 정수니까 지금 정수형인데
  //s같은 스트링값 주면 v='s'; 하면 오류남
	
	// dynamic type variable
  dynamic d=3.2; //var랑 똑같이 아무 자료형 적어도 됨 그런데
  d='sdg'; //바꿀 수도 있음
  print(d);
	
	// Difference between dynamic and var types

	
	// late variable
  late String str; //선언이랑 정의 시점이 달라도 됨
  str='hello';
  print(str);

  
	// final variable
  final String name; //수정불가
  name='kat';
  print(name);


	// const variable
  const now=102.2;
  print(now);

  /*
   final은 실행중에 값이 결정됩니다.
  final은 이 파일이 실행될 때 해당 위치에서 값이 결정됩니다.
  const는 컴파일시에 값이 결정됩니다.
  const는 이 파일을 컴파일할 때 기계어로 번역될 때 값이 결정됩니다
   */
}