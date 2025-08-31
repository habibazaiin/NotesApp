import 'package:flutter/material.dart';
import 'package:my_app/widgets/add_note_buttom_sheet.dart';
import 'package:my_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        shape: CircleBorder(),
        backgroundColor: Color(0xff62FCD7),
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
