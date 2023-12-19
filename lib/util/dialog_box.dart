// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:app2/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancell;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancell,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add new Task',
            ),
          ),

          // button -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
              MyButton(text: 'Save', onPressed: onSave),
              Padding(padding: EdgeInsets.all(24)),
              const SizedBox(width: 8),

              //cancel button
              MyButton(text: 'Cancell', onPressed: onCancell),
            ],
          ),
        ]),
      ),
    );
  }
}
