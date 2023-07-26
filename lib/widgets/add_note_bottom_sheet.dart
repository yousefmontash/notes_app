import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              lines: 5,
            ),
            SizedBox(
              height: 120,
            ),
            CustomAddNoteButton(),
          ],
        ),
      ),
    );
  }
}
