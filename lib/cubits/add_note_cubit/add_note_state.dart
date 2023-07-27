part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSucceed extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteFailed extends AddNoteState {
  final String errMessaage;

  AddNoteFailed(this.errMessaage);
}
