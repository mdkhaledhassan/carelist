import 'package:hive/hive.dart';
part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  bool complete;
  @HiveField(2)
  DateTime? time;
  @HiveField(3)
  String description;
  @HiveField(4)
  String title;

  Todo(
      {this.complete = false,
      this.description = '',
      this.title = '',
      this.time});
}
