import 'dart:math';

class NumberStream {
  Stream<int> getNumbers(int maxCount) async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      Random random = Random();
      int myNum = random.nextInt(10);
      return myNum;
    });
  }
}
