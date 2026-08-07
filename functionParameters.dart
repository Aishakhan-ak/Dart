void main() {
  List<int> nums = [34, 56, 76, 12, 4];
  bool f = searchNumbers(nums, 34, s: 7);
  print(f);
}

bool searchNumbers(List<int> numbers, int toBeSearched, {int? s}) {
  int found = 0;
  for (int n in numbers) {
    if (n == toBeSearched) {
      found = 1;
      break;
    }
  }
  if (found == 1) {
    return true;
  } else {
    return false;
  }
}
