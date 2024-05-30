void main() {

  // 1. if문
  if (true) {
    print('if문의 구조입니다~');
  }

  // 2. else if문 -> python elif문!

  int score = 85;

  if (score >= 90) {
    print('A학점');
  } else if (score >= 80) {
    print('B학점');
  } else if (score >= 70) {
    print('C학점');
  } else {
    print('D학점');
  }

  // 3. switch문
  // 상황 ) 변수에 저장된 숫자가 홀/짝 판단하는 구조 생성!

  int n = 7;

  // 검사 조건에 대한 결과 -> bool 형태가 아니다! / 데이터 값!
  switch (n % 2) { // 검사 데이터 값
    case 1:
      print('홀수 입니다.');
      break;
    case 0:
      print('짝수 입니다');
      break;
    default: // else와 같은 의미!
      print('숫자가 잘못 입력 되었습니다.');
      break;
  }


}