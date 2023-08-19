import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'note_logic.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<NoteLogic>();
    final state = Get.find<NoteLogic>().state;

    return Text("note");
  }
}
