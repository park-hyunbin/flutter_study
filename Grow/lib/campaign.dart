import 'package:firebase_database/firebase_database.dart';

class Campaign {
  String? key;
  String camp_num;
  String user_num;


  Campaign(this.camp_num, this.user_num);

  Campaign.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        camp_num = snapshot.value['camp_num'],
        user_num = snapshot.value['user_num'];


  toJson() {
    return {
      'camp_num' : camp_num,
      'user_num' : user_num,
    };
  }
}


