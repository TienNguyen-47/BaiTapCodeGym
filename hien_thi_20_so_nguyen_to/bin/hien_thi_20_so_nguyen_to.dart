import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Số lượng số nguyên tố cần in ra: ');
  int numbers = int.parse(stdin.readLineSync()!);
  int count = 0;
  int n = 2;
  while(count < numbers)
  {
    bool isPrime = true;
      int t = sqrt(n).floor();
      for (int i = 2; i <= t; i++) {
        if (n % i == 0) {
          isPrime = false;
          n = n + 1;
          break;
        }               
      }
      if(isPrime == true)
      {
        print('$n');
        count = count + 1;
        n = n + 1;
      }
  }
    
}
