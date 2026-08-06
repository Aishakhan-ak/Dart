void main() {
  List<int> numbers = [10, 45, 78, 96, 23, 54, 67];

  // Add multiple elements
  numbers.addAll([30, 45, 56]);

  // Remove element at index 6
  numbers.removeAt(6);

  // Sort in ascending order
  numbers.sort();

  // Insert 2000 at index 4
  numbers.insert(4, 2000);

  // Get first element
  print("First element: ${numbers.first}");

  // Get reversed list
  print("Reversed list: ${numbers.reversed.toList()}");

  numbers.forEach((element) {
    print(element);
  });

  for (int element in numbers) {
    print(element);
  }
}
