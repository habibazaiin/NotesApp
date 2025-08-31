part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesCubitInitial extends NotesState {}
final class NotesCubitSuccess extends NotesState {}


