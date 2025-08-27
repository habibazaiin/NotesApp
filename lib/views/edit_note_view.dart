import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 45),
          CustomAppBar(title: 'Edit Notes', icon: Icons.check,),
          
        ],
      ),
    );;
  }
}