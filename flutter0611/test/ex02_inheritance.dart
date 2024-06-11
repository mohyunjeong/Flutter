void main() {

  parent p = parent();
  // 객체(클래스) 생성자 : parent 클래스를 불러오기 위한 기능
  p.money();

  child c = child();
  c.money(); // 부모가 가지고 있는 메소드
  c.pay();

  // p.pay(); // 부모는 자식의 메소드 사용 X

}

// 상속 : 어떠한 물질적인 것들을 물려주는 행위 (사람)
//       부모가 가지고 있는 기능/데이터를 자식에게 물려주는 행위 (코딩)

class parent {

  void money() {
    print('1000만원');
  }

}

// extends : 확장하다!
class child extends parent {
  // 부모의 기능을 포함하고 있는 훨씬 더 확장된 child 클래스 생성!

  void pay() {
    print('100만원');
  }

  // 오버라이드 : 재정의
  void money() {
    print('500만원');
  }

}