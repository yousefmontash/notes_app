part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSucceed extends NotesState {
  final List<NoteModel> notes;

  NotesSucceed(this.notes);
}

class NotesFailed extends NotesState {
  final String errMessage;

  NotesFailed(this.errMessage);
}
