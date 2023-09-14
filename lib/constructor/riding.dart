import 'dart:io';

class Bus {

  String name;
  int num;
  int money;
  int totalMoney;
  late List<String> studentNames;

  Bus(this.name, [this.money = 1000, this.totalMoney = 0, this.num = 0, List<String>? studentsNames]) {
    studentNames = studentsNames ?? [];
  }

  void mountStudent(String studentName) {
    num += 1;
    totalMoney += money;
    studentNames.add(studentName);
    print('$name번 버스의 현재 수익 : ${totalMoney - money} => $totalMoney원 달달하노 ㅋㅋ');
    print('$name번 버스 현재 인원 : ${num-1} => $num');
    if(studentNames.isNotEmpty) {
      stdout.write('명단 : ');
      studentNames.forEach((e) => stdout.write('$e '));
      stdout.write('\n');
    }
  }

  void unMountStudent(String studentName) {
    num -= 1;
    studentNames.remove(studentName);
    print('$name번 버스 현재 인원 : ${num+1} => $num');
    if(studentNames.isNotEmpty) {
      stdout.write('명단 : ');
      studentNames.forEach((e) => stdout.write('$e '));
      stdout.write('\n');
    }
  }

}

class Student {

  String name;
  int money;
  bool isRiding;
  bool dead;
  Bus? nowBus;

  Student(this.name, [this.money = 2200, this.isRiding = false, this.dead = false]);

  void takeBus(Bus bus) {
    if(dead) {
      print('이미 싸늘해진 $name입니다');
      print('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
      return;
    }
    if(isRiding) {
      getOffBus();
      takeBus(bus);
      return;
    }
    if(money < bus.money) {
      print('$name의 지갑은 뽐거지라 버스를 탈 수 없다!');
      print('$name의 눈앞이 깜깜해졌다!');
      print('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
      dead = true;
      return;
    }
    print('${bus.name}번 버스에 $name 탐');
    money -= bus.money;
    print('${bus.money}원 지출로 인해 $name의 남은 돈 : ${bus.money + money} - ${bus.money} = $money원');
    bus.mountStudent(name);
    isRiding = true;
    nowBus = bus;
    print('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
  }

  void getOffBus() {
    if(dead) {
      print('이미 싸늘해진 $name입니다');
      print('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
      return;
    }
    if(!isRiding) {
      return;
    }
    print('${nowBus!.name}번 버스에서 $name 내림');
    nowBus!.unMountStudent(name);
    isRiding = false;
    nowBus = null;
    print('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
  }

}

void main() {

  Student student1 = Student('엄준식');
  Student student2 = Student('김찬호', 3800);
  Student student3 = Student('손인욱', 5000);
  Student student4 = Student('정상길', 12000);

  Bus bus1 = Bus('100',1500);
  Bus bus2 = Bus('200',1200);
  Bus bus3 = Bus('300');

  student1.takeBus(bus1);
  student2.takeBus(bus2);
  student3.takeBus(bus1);
  student4.takeBus(bus1);
  student1.takeBus(bus2);
  student4.takeBus(bus2);
  student3.takeBus(bus3);
  student2.takeBus(bus3);
  student1.takeBus(bus1);
  student1.takeBus(bus3);
  student2.takeBus(bus3);
  student2.takeBus(bus2);
  student2.takeBus(bus2);
  student3.takeBus(bus1);
  student1.takeBus(bus2);
  student1.takeBus(bus1);
  student1.takeBus(bus1);
  student4.takeBus(bus2);
  student4.takeBus(bus2);
  student4.takeBus(bus3);
  student1.takeBus(bus1);
  student2.takeBus(bus3);
  student1.takeBus(bus3);
  student1.takeBus(bus1);
  student4.takeBus(bus1);
  student3.takeBus(bus3);
  student3.takeBus(bus3);
  student2.takeBus(bus3);
  student3.takeBus(bus1);
  student1.takeBus(bus1);
  student4.takeBus(bus1);
  student4.takeBus(bus2);
  student4.takeBus(bus2);
  student4.takeBus(bus1);
  student4.takeBus(bus1);
  student4.takeBus(bus3);
  student1.getOffBus();
  student2.getOffBus();
  student3.getOffBus();
  student4.getOffBus();
}