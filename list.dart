void main() {
  List<int> numbers = [10, 45, 78, 96, 23, 54, 67];
  numbers.add(100);
  int fail = 0;
  for (int index = 0; index < numbers.length; index++) {
    if (numbers[index] > 50) {
      print("Marks = ${numbers[index]}  status = Passed");
    } else {
      fail++;
      print("Marks = ${numbers[index]}  status = Failed");
    }
  }
  numbers.add(100);

  int max = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (max < numbers[i]) {
      max = numbers[i];
    }
  }
  print("1st position marks = $max");
  print("Failed students = $fail");
  print("Passed students = ${numbers.length - fail}");
}
