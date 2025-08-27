import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_app_bar.dart';
import 'package:my_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 45),
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
    ;
  }
}
