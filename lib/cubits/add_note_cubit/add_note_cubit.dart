import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSucess());

    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
