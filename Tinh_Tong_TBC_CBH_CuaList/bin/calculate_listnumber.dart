import 'dart:math';
import 'dart:io';

void main() {
  var list = [1,2,3,4,5,6,7,8,9];
  int tong = 0;
  double TBC = 0;
  double CBH = 0;
  int i = 0;

  for(i = 0; i < list.length; i++){
    tong += list[i];
  }
  print('Tổng: ''$tong');
  TBC = (tong / list.length);
  print('Trung bình cộng: ''$TBC');
  CBH = sqrt(tong);
  print('Căn bậc hai: ''$CBH');
}
