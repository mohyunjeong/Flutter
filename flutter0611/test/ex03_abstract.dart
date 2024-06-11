void main() {

}

// 클래스 -> 완성된 설계도
// 추상 클래스 -> 미완성된 설계도
// 추상클래스의 특징
// 1. 추상 메소드가 하나라도 있다면 추상클래스로 바껴야 된다!
// 2. 추상 클래스를 물려받는 (상속) 경우 추상적인 메소드를 강제적으로 꼭! 선언해야 한다!

abstract class Animal {
  void move(); // 추상 메소드 -> abstract 추가
  // void move() {
  //   print('두발로 걷는다');
  // }

  void eat();
  // void eat() {
  //   print('사과를 먹는다');
  // }

  void sleep() { // 꼭 추상적인 메소드만 존재해야 하는건 X
    print('꿀잠 자기');
  }

}

class dog extends Animal { // 추상적(완벽X) 클래스이기 때문에 물려받으려 할 때 오류 생성!

  @override // 추상 메소드 강제 선언
  void move() {
    print('꼬리를 흔들며 움직이기~');
  }

  @override
  void eat() {
    print('맛있는 사료 섭취!');
  }

}