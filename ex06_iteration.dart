void main() {

  // 1. for문
  for (int i = 0; i < 5; i++) {

    print('$i 회차 반복');

  }

  // 2. for in문 -> python의 반복문 구조!
  List<int> numbers = [1, 2, 3, 4, 5];

  for (int a in numbers) {
    print(a);
  }

  // 3. while문 -> 반복의 횟수 제한이 없다!
  while (true) {
    print('while문의 반복');
    break;
  }

  // 4. do-while문 -> 반복의 횟수 제한이 없다!
  do {
    print('do-while문의 반복');
    break;
  } while (true);

  // do-while문의 경우 일단 무조건! 최초 한번은 로직을 실행하고 나서
  // 반복에 대한 여부를 판단하는 문법이다!

}