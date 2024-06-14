void main() {

  // Person p1 = Person();
  //
  // // print(p1.name); // null
  //
  // p1.name = '모현정';
  // p1.age = 24;
  // p1.gender = '여성';

  Person p1 = Person('모현정', 24, '여성');
  Person p2 = Person('김혜윤', 29, '여성');

  print(p1.name);
  print(p2.name);

  Person p3 = Person.method();
  p3.name = "이상혁";
  print((p3.name));

  // Person p2 = Person();
  //
  // p2.name = '김혜윤';
  // p2.age = 29;
  // p2.gender = '여성';
  //
  // Person p3 = Person();
  //
  // p3.name = '변우석';
  // p3.age = 32;
  // p3.gender = '남성';
  //
  // print(p1.name);

}

// 객체 : 설계도(class)를 통해서 만들어지는 실체!
// 설계도 -> 실체로 변환하는 과정을 '인스턴스화' 라고 한다!

class Person {
  // late 키워드 : 추후에 변수에 초기화 값을 연결 할 수 있도록 도와주는 기능
  late String name;
  late int age;
  late String gender;

  // Person();

  // 설계도를 통해서 객체 생성시 구체적으로 가질 값들을 연결하는 '생성자 메소드'
  // 생성자 메소드의 특징! -> 메소드의 이름은 꼭 클래스와 동일한 이름으로 생성해야 한다!
  // Person(String name, int ages, String gender) {
  //   // this. 키워드 : 설계도가 가지고 있는 나만의 필드를 지칭!
  //   this.name = name;
  //   this.age = age;
  //   this.gender = gender;
  // }

  // 한줄로 생성자 메소드 만들기
  Person(this.name, this.age, this.gender);

  // 생성자 메소드를 여러개 만들기 위해서는 네이밍이 필요하다!
  Person.method() {

  }

}