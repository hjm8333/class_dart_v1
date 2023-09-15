mixin ElectricCar {
  chargeElectricity() {
    print("전기 충전");
  }
}
mixin PetrolCar {
  chargePetrol() {
    print("휘발유 충전");
  }
}

class Car1 with ElectricCar{

}

class Car2 with PetrolCar {

}

class HybridCar with ElectricCar, PetrolCar {
  @override
  chargeElectricity() {
    super.chargeElectricity();
    print("테슬라 충전기로 충전중");
  }

  @override
  chargePetrol() {
    super.chargePetrol();
    print("GS 칼텍스에서 주유");
  }
}