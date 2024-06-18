void main() {
  orderProcess();
  waiting();
}

void orderProcess() {
  // 주문에 대한 절차 설계
  kiosk();
  orderFood();
  getFood();
  goHome();
}

void kiosk() {
  print('키오스크 사용하기');
}

void orderFood() {
  print('햄버거 주문하기');
}

void getFood() {
  print('햄버거 받기');
}

void goHome() {
  print('햄버거 들고 집에 가기');
}

void waiting() {
  print('앉아서 핸드폰 보기');
}
