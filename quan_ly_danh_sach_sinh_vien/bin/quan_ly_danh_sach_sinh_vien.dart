import 'package:quan_ly_danh_sach_sinh_vien/quan_ly_danh_sach_sinh_vien.dart' as quan_ly_danh_sach_sinh_vien;

void main() {
  List<String> DanhSachSinhVien = ['Nguyễn Văn A', 'Trần Thị B', 'Lương Minh C', 'Trương Thị D', 'Hồ Văn E'];
  DanhSachSinhVien.add('Bùi Thị Thúy F');
  DanhSachSinhVien.remove('Trần Thị B');
  print(DanhSachSinhVien.indexOf('Lương Minh C'));
  int SoLuongSV = 0;
  SoLuongSV = DanhSachSinhVien.length;
  print('Số lượng sinh viện trong danh sách: ''$SoLuongSV');
  print(DanhSachSinhVien);
}
