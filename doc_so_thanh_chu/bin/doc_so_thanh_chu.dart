import 'dart:io';

void main() {
  print('Mời bạn nhập một số nguyên dương: ');
  int n = int.parse(stdin.readLineSync()!);
  List<String> chu_thuong = [
    'không',
    'một',
    'hai',
    'ba',
    'bốn',
    'năm',
    'sáu',
    'bảy',
    'tám',
    'chín'
  ];
  List<String> chu_hoa = [
    'Không',
    'Một',
    'Hai',
    'Ba',
    'Bốn',
    'Năm',
    'Sáu',
    'Bảy',
    'Tám',
    'Chín'
  ];
 if(n%10 !=0){print(
      '${chu_hoa[n~/100]} trăm ${chu_thuong[(n - (n ~/ 100) * 100) ~/ 10]} mươi ${chu_thuong[n % 10]}.');
}
  else{
    print(
      '${chu_hoa[n~/100]} trăm ${chu_thuong[(n - (n ~/ 100) * 100) ~/ 10]} mươi.');

  }
}