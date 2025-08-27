import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: const Column(
        children: [
          SizedBox(height: 45,),
          CustomAppBar()
        ],
      ),
    );
  }
}


