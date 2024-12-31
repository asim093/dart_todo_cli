import 'dart:html';

void main(){
  var phone= Map();

  phone['ram']='16gb';
  phone['storage']='256';
  phone['sensore']={'proximity','accelerometer','gyroscope',['front speaker','rear speaker','back speaker']};
  phone['touch']='smooth';
  phone['score rate']=true;
  phone['price']=1780000;
  for (var entry in phone.keys) {
    print('${entry.key}: ${entry.value}');
  }
}