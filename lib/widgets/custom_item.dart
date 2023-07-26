import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffffce7f),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Build your Career with tharwat samy",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff875f23),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                "May 21,2022",
                style: TextStyle(
                  color: Color(0xff875f23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
