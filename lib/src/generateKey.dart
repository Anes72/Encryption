import 'dart:math';

List<String> generateKey() {
  final random = Random();
  final numbers = <int>{}; 

  while (numbers.length < 27) {
    numbers.add(random.nextInt(900)+100); 
  }

  return numbers.map((e) => e.toString()).toList();
}