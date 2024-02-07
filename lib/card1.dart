import 'package:flutter/material.dart';
import 'models/task.dart';

class Ecran1 extends StatelessWidget{
  List<Task> tasks = Task.generateTask(50);
  @override
  Widget build(BuildContext context){
    return tasks.isNotEmpty ?
      ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) =>
          Card(
            elevation: 6,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(tasks[index].id.toString()),
              ),
              title: Text(tasks[index].title),
              subtitle: Text(tasks[index].tags.join(" "))
            ),
          ),
      )
    :Container(
      color: Colors.lightGreen,
      child: const Center(
        child: Text('Rien à afficher'),
      ),
    );
  }
}