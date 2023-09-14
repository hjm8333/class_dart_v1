class Animal {
  //속성
  String? type;
  String? name;
  String? doing;
  int? iq;
  //기능
  void describe() {
    print("iq $iq $name $type가 $doing을 시행합니다");
  }
}

void main() {
  Animal animal = Animal();
  animal.type = '유사인류';
  animal.name = '엄준식';
  animal.doing = '밥딸잠';
  animal.iq = 80;

  animal.describe();
}