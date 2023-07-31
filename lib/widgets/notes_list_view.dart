import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          if (state is NotesInitial) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: CustomNotesItem(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
