import 'dart:io';
import 'dart:math';

void main() {
  Map<String, int> DSHS = {'Bình' : 8, 'Long' : 7, 'Hoa' : 5, 'Lan' : 9, 'Tiên' : 4};

  //Thêm học sinh Nam và điểm 10 vào danh sách;
  DSHS['Nam'] = 10;
  // Cập nhật điểm số học sinh Bình 
  DSHS['Bình'] = 6;
  // Xóa học sinh Lan khỏi danh sách
  DSHS.remove('Lan');
  // In danh sách học sinh và điểm cảu họ
  print(DSHS);
  // Tìm và in ra điểm số của học sinh có tên Long
   print(DSHS['Long']);
}
