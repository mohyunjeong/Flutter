import 'dart:io';

void main() {
  orderProcess();
  waiting();
}

void orderProcess() async {
  // 주문에 대한 절차 설계
  kiosk();
  orderFood();
  await getFood(); // Future<String> 형태로 선언!
  goHome();
}

void kiosk() {
  print('키오스크 사용하기');
}

void orderFood() {
  print('햄버거 주문하기');
}

// Future 사용시 함께 사용되는 키워드! -> await, async
Future<String> getFood() async {
  Duration delay = Duration(seconds: 4); // delay를 줄 때 사용
  // sleep(delay);

  String menu = '햄버거'; // 코드는 위에서 아래로 진행하기 때문에 먼저 선언!

  // delay 값을 비동기 방식으로 사용할 수 있도록 설계!
  await Future.delayed(delay, (){
    print('${menu} 받기');
  });

  return menu;
}

void goHome() {
  print('햄버거 들고 집에 가기');
}

void waiting() {
  print('앉아서 핸드폰 보기');
}
