import 'dart:io';
import 'dart:math';

void main() {
  bool isPrime = true;
  int SoNguyenTo = 1;
  for (int i = 0; i < 100; i++) {
    for (int t = 2; t <= i; t++) 
    {
      if (i % t == 0) 
      {
        isPrime = false;
        break;
      }
      SoNguyenTo = i;                      
    }
    print('$SoNguyenTo');               
  } 
}
