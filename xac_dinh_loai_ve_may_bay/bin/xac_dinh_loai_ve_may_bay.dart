import 'package:xac_dinh_loai_ve_may_bay/xac_dinh_loai_ve_may_bay.dart' as xac_dinh_loai_ve_may_bay;

void main() {
  int age = 38;
  bool isMember = true;
  String memberType  = 'Gold';
  if(age < 12)
  {
    print('Child Ticket');
  }
  else if(isMember == true && memberType == 'Gold')
  {
    print('Gold Member Ticket');
  }
  else if(isMember == true && memberType == 'Silver')
  {
    print('Silver Member Ticket');
  }
  else
  {
    print('Standard Ticket');
  }
  
}
