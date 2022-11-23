import 'dart:math';

abstract class RandomNumberGenerator {
  int generate();
}

class RandomNumberGeneratorImpl implements RandomNumberGenerator {
  @override
  int generate() => Random().nextInt(100);
}
