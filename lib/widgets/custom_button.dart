import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child:  isLoading ? SizedBox(
          height: 24,
          width: 24,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ) : Center(
          child: const Text('Add', style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}