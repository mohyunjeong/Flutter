void main() {

  // dart 언어는 null 값을 허용하지 않는다!

  // int a = null; // 에러

  // 1. Nullable 변수 사용 -> null 값이 들어 올 수도 있습니다~
  // 자료형 형태의 뒤에 ?기호를 사용하여 null 값을 허용 한다!
  int? a = 5; // int? a = null;
  String? b = "flutter"; // String? b = null;
  double? c = 3.14;

  a = null;
  b = null;
  c = null;

  // 2. NonNull -> 선언 변수에 대하여 절대! null 값이 들어올 수 없음을 지정하는 기능!
  int d = 6; // int? d = 6; 이면 d = null; 사용 가능
  d!;

  d = 1;
  // d = null;

}