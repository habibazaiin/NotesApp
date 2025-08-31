import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(NotesCubitSuccess(noteBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
