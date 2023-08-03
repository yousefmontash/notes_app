import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                  colors[currentIndex];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              chosed: currentIndex == index,
            ),
          ),
        );
      },
      itemCount: colors.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

List<Color> colors = const [
  Color(0xff1A1423),
  Color(0xff372549),
  Color(0xff774C60),
  Color(0xffB75D69),
  Color(0xffEACDC2),
  Color(0xff264653),
  Color(0xff2A9D8F),
  Color(0xffE9C46A),
  Color(0xffF4A261),
  Color(0xffE76F51),
];
