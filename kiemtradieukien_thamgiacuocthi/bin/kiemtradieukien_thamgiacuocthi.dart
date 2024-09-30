import 'package:kiemtradieukien_thamgiacuocthi/kiemtradieukien_thamgiacuocthi.dart' as kiemtradieukien_thamgiacuocthi;

void main() {
  int age = 20;
  String isRegistered = 'Đã đăng ký';
  if(age > 18 && isRegistered == 'Đã đăng ký')
  {
    print('Bạn đủ điều kiện tham gia cuộc thi');
  }
  else
  {
    print('Bạn không đủ điều kiện tham gia cuộc thi');
  }
}
