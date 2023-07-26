import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
