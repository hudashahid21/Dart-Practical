import 'dart:io';

void main() {
  // List to store tasks
  List<String> tasks = [];

  while (true) {
    // Displaying the menu
    print('\n--- To-Do List ---');
    print('1. View all tasks');
    print('2. Add new task');
    print('3. Delete a task');
    print('4. Update existing task');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        // View all tasks
        if (tasks.isEmpty) {
          print('No tasks available.');
        } else {
          print('\n--- Tasks ---');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case '2':
        // Add a new task
        stdout.write('Enter new task: ');
        String newTask = stdin.readLineSync()!;
        tasks.add(newTask);
        print('Task added successfully.');
        break;

      case '3':
        // Delete a task
        if (tasks.isEmpty) {
          print('No tasks available to delete.');
        } else {
          print('\n--- Tasks ---');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Enter task number to delete: ');
          int taskIndex = int.parse(stdin.readLineSync()!) - 1;

          if (taskIndex >= 0 && taskIndex < tasks.length) {
            tasks.removeAt(taskIndex);
            print('Task deleted successfully.');
          } else {
            print('Invalid task number.');
          }
        }
        break;

      case '4':
        // Update an existing task
        if (tasks.isEmpty) {
          print('No tasks available to update.');
        } else {
          print('\n--- Tasks ---');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Enter task number to update: ');
          int taskIndex = int.parse(stdin.readLineSync()!) - 1;

          if (taskIndex >= 0 && taskIndex < tasks.length) {
            stdout.write('Enter the new task description: ');
            String updatedTask = stdin.readLineSync()!;
            tasks[taskIndex] = updatedTask;
            print('Task updated successfully.');
          } else {
            print('Invalid task number.');
          }
        }
        break;

      case '5':
        // Exit the program
        print('Exiting the To-Do list app.');
        return;

      default:
        print('Invalid choice, please try again.');
        break;
    }
  }
}
