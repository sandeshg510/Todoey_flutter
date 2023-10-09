import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool? isChecked;
  final void Function(bool?)? checkboxCallback;
  final void Function()? longPressCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback});
  // 'void Function(bool?)?'.
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            value: isChecked,
            onChanged: (newValue) {
              checkboxCallback!(newValue);
            }),
        onLongPress: longPressCallback);
  }
}

// void Function(bool?)?'.),

// void checkCallBack(newValue) {
//   setState(() {
//     isChecked = newValue!;
//   });
// }
