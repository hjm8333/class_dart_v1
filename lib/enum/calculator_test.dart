class Calculator {

  int total = 100;

  static int add(int a, int b) {
    return a+b;
  }

  static int multiply(int a, int b) {
    return a*b;
  }
}

void main() {
  int result1 = Calculator.add(10, 10);
  print("result1 : $result1");
  int result2 = Calculator.multiply(10, 10);
  print("result2 : $result2");

}