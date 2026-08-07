void main() {
  printMessage();
  double s1 = percentage(1200, 1156);
  print(s1);

  int s2 = add(34, 56);
  int s3 = add(54, 23);
  print(add(s2, s3));
}

int add(int num1, int num2) {
  int r = num1 + num2;
  return r;
}

double percentage(double total, double obtained) {
  double result = (obtained / total) * 100;
  return result;
}

void printMessage() {
  print("hello");
}
