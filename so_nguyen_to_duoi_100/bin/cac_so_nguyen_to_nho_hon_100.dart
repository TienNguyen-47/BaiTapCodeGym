import 'dart:io';
import 'dart:math';

void main() {
  for(int a = 0; a < 100; a++)
  {
    bool isPrime = true;
    int t = sqrt(a).floor();
    for (int i = 2; i <= t; i++) {
      if (a % i == 0) {
        isPrime = false;
        break;
      }
    }
    if(isPrime == true)
    {
      print('$a');
    }
  }
}
