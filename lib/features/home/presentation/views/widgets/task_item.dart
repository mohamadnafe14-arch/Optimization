import 'package:flutter/material.dart';
import 'package:to_do_app/core/models/to_do_model.dart';
import 'package:to_do_app/core/providers/to_do_provider.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.toDoModel, required this.provider});
  final ToDoModel toDoModel;
  final ToDoProvider provider;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: toDoModel.isCompleted,
        onChanged: (value) {
          provider.toggleToDoStatus(toDo: toDoModel);
        },
      ),
      title: Text(
        toDoModel.title,
        style: TextStyle(
          decoration: toDoModel.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          provider.removeToDo(toDoModel);
        },
      ),
    );
  }
}
