// 빠르게 복사 : ctrl + alt + 방향키
// 빠르게 삭제 : 범위 드래그 + ctrl + D

void main() {

  String subject = "flutter";
  int cnt = 1;

  // print(subject + " 수업 " + cnt + "차시"); -> 에러

  print("$subject 수업 $cnt차시"); // flutter 수업 1차시
  print("$subject수업 $cnt차시"); // flutter수업 1차시
  print("$subject수업 $cnt+1차시"); // flutter수업 1+1차시
  print("$subject수업 ${cnt+1}차시"); // flutter수업 2차시 // {}만 사용 가능

}