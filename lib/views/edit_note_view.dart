import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_app/models/note_model.dart';
import 'package:my_app/widgets/color_list_view.dart';
import 'package:my_app/widgets/custom_app_bar.dart';
import 'package:my_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 45),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hint: widget.note.title,
            onChange: (value) {
              title = value ;
            },),
            SizedBox(height: 16),
            CustomTextField(hint: widget.note.subtitle, maxLines: 5,
            onChange: (value) {
              subtitle = value;
            },),
            SizedBox(height: 16),
            ColorEditListView(note: widget.note)
          ],
        ),
      ),
    );
    ;
  }
}


class ColorEditListView extends StatefulWidget {
  const ColorEditListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<ColorEditListView> createState() => _ColorEditListViewState();
}

class _ColorEditListViewState extends State<ColorEditListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}