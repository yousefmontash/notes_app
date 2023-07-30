import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/constants.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key, this.onTap, this.isLoading = false});
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: isLoading
            ? const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : const Text(
                "Add",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
      ),
    );
  }
}
