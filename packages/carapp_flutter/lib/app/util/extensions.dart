import 'package:flutter/material.dart';

extension MoveCursorToTheEndOfTextEditingController on TextEditingController {
  void moveCursorToTheEnd() {
    selection = TextSelection.fromPosition(TextPosition(offset: text.length));
  }
}
