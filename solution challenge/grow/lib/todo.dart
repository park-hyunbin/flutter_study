import 'package:firebase_database/firebase_database.dart';

class Todo {
  String? key;
  String user_num;
  String todo;
  String cam_todo;
  String point;

  Todo(this.user_num, this.todo, this.cam_todo, this.point);

  Todo.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        user_num = snapshot.value['user_num'],
        todo = snapshot.value['todo'],
        cam_todo = snapshot.value['cam_todo'],
        point = snapshot.value['point'];

  toJson() {
    return {
      'user_num': user_num,
      'todo': todo,
      'cam_todo': cam_todo,
      'point' : point,
    };
  }
}