import 'dart:io';

void main() {
  int rate = 23000;

  print ("Xin mời bạn nhập số lượng USD cần đổi:");
  var Money = stdin.readLineSync();
  var USD = int.tryParse(Money ?? "");
  if (USD == null) {
      print("bad money");
  } else {
      var VND = rate * USD;
      print(VND);
  }
}
