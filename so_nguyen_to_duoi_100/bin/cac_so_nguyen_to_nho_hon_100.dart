import 'dart:io';
import 'dart:math';

<<<<<<< HEAD
void main() {  
=======
void main() {
>>>>>>> 753bab3baf18aa477da19d13e47f10a72f5bda1e
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
