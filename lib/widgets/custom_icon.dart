import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key,required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.05)),
      child: Center(
        child: IconButton(
          onPressed: () {
           
          },
          icon:  Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
