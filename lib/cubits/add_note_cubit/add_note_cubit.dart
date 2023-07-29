import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isLoading = false;
  void addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSucceed());
    } catch (e) {
      emit(AddNoteFailed(e.toString()));
    }
  }
}
