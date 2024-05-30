void main() {

  // dart 언어는 자동 형변환이 불가능 하다!
  // 무조건 강제적으로 형변환을 진행해야 한다! -> 강제(명시적) 형변환

  int a = 10;
  print(a.toDouble());

  double b = 3.14;
  print(b.toInt()); // 뭔가 형태를 바꿀 때 : .to자료형
  
  // 문자에서 -> 숫자로 변형!
  String num1 = '10';
  print(int.parse(num1));
  print(double.parse(num1));
  
}