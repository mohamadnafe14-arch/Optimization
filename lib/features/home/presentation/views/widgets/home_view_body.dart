import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/core/providers/to_do_provider.dart';
import 'package:to_do_app/features/home/presentation/views/widgets/filter_button.dart';
import 'package:to_do_app/features/home/presentation/views/widgets/task_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FilterButton(filter: ToDoFilter.all, text: 'All'),
            FilterButton(filter: ToDoFilter.completed, text: 'Completed'),
            FilterButton(filter: ToDoFilter.pending, text: 'Pending'),
          ],
        ),
        Consumer<ToDoProvider>(
          builder: (context, provider, child) {
            if (provider.toDoList.isEmpty) {
              return const Center(
                child: Text(
                  'No tasks yet',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              );
            }
            return Expanded(
              child: ListView.builder(
                itemCount: provider.filteredToDoList.length,
                itemBuilder: (context, index) {
                  return TaskItem(provider: provider, toDoModel: provider.filteredToDoList[index]);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
