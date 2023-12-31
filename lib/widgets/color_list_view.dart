import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //int currentIndex = 0; the difference between this location and the one above it is that every build will put the variable with zero.
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color =
                  kColors[currentIndex];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              chosed: currentIndex == index,
            ),
          ),
        );
      },
      itemCount: kColors.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

