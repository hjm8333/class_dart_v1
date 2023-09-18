class Box<T> {
  T value;
  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  var stringBox = Box<String>("안녕 다트");
  print(stringBox.getValue());

  var intBox = Box<int>(50);
  print(intBox.getValue());

  var numbers = [1,2,3,4,5];
  var firstEven  = findFirst(numbers, (n) => n % 2 == 0);
  print("first Even : $firstEven");
  var firstOdd = findFirst(numbers, (n) => n % 2 != 0);
  print("first Odd : $firstOdd");
  var lastEven = findLastEven(numbers);
  print("last even : $lastEven");
  var lastOdd = findLast(numbers, (n) => n % 2 != 0);
  print("last odd : $lastOdd");
}

T? findFirst<T>(List<T> items, bool Function(T) check) {

  var count = 0;
  for(var i in items) {
    count++;
    print("count : $count, item : $i");
    //check 함수는 어떤 데이터 타입도 매개변수로 담을 수 있음
    //check 함수의 구현 부분은 사용 시점에 구현, 결과의 데이터 타입은 bool형태여야함
    if(check(i)) {
      return i;
    }
  }
  return null;
}

T? findLastEven<T>(List<T> items) {
  for(int i = items.length - 1; i >= 0; i--) {
    int r = items[i] as int;
    if(r % 2 == 0) {
      return items[i];
    }
  }
  return null;
}

T? findLast<T>(List<T> items, bool Function(T) check) {
  for(int i = items.length - 1; i >= 0; i--) {
    T r = items[i];
    if(check(r)) {
      return r;
    }
  }
  return null;
}