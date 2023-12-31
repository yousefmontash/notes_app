import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/generated/l10n.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SafeArea(
        child: Column(
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            CustomAppBar(
              title: S.of(context).title,
              icon: Icons.search,
            ),
            const Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
