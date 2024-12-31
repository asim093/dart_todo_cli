import 'dart:io';

void main() {
  var todo = <String>[];

  print("Enter your Todo (type 'exit' to stop):");

  while (true) {
    print("\nOptions: \n1. Add task\n2. Edit task\n3. Delete task\n4. View list");
    String value = stdin.readLineSync() ?? '';

    if (value.toLowerCase() == 'exit') {
      break;
    }

    if (value.toLowerCase() == 'edit') {
      print("Enter the number of the task you want to edit:");
      int taskNumber = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

      if (taskNumber >= 1 && taskNumber <= todo.length) {
        print("Enter the new text for task $taskNumber:");
        String newValue = stdin.readLineSync() ?? '';
        todo[taskNumber - 1] = newValue; 
        print("Task $taskNumber updated successfully.");
      } else {
        print("Invalid task number.");
      }
    } else if (value.toLowerCase() == 'delete') {
      print("Enter the number of the task you want to delete:");
      int taskNumber = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

      if (taskNumber >= 1 && taskNumber <= todo.length) {
        todo.removeAt(taskNumber - 1); 
        print("Task $taskNumber deleted successfully.");
      } else {
        print("Invalid task number.");
      }
    } else if (value.toLowerCase() == 'view list') {
      print("\nYour To-do List:");
      for (int i = 0; i < todo.length; i++) {
        print("${i + 1}. ${todo[i]}");
      }
    } else {
      todo.add(value);
      print("Task added: $value");
    }
  }

  print("\nFinal To-do List:");
  for (int i = 0; i < todo.length; i++) {
    print("${i + 1}. ${todo[i]}");
  }
}
