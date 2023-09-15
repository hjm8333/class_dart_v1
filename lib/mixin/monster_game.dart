mixin AttackBehavior {
  void attack(Monster target);
}

abstract class Weapon {
  int damage;
  Weapon(this.damage);
}

class Sword extends Weapon {
  Sword(int damage) : super(damage);
}

class Bow extends Weapon {
  Bow(int damage) : super(damage);
}

class Monster with AttackBehavior {
  String name;
  num hp;

  Weapon weapon;

  Monster(this.name, this.hp, this.weapon);
  
  void showInfo() {
    print("-------------------- 상태창 --------------------");
    print("이름 : $name");
    print("무기 대미지 : ${weapon.damage}");
    print("hp : $hp");
  }
  
  @override
  void attack(Monster target) {
    print("${this.name}이 ${target.name}을 공격읍니다");
    target.hp -= this.weapon.damage;
  }
}

void main() {

  Sword sword = Sword(10);
  Bow bow = Bow(5);

  Monster monster1 = Monster("엄준식", 100, sword);
  Monster monster2 = Monster("김찬호", 50, bow);

  monster1.attack(monster2);
  monster1.attack(monster2);
  monster2.showInfo();
  monster2.attack(monster1);
  monster2.attack(monster1);
  monster1.showInfo();

}