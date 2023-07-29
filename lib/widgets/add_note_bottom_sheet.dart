import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucceed) {
          Navigator.pop(context);
        } else if (state is AddNoteFailed) {
          print("object ${state.errMessaage}");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: SingleChildScrollView(
              child: AddNoteForm(),
            ),
          ),
        );
      },
    );
  }
}
