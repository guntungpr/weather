import 'package:flutter/material.dart';

class TextEditingControllerWorkaround extends TextEditingController {
  TextEditingControllerWorkaround({String? text}) : super(text: text);

  void setTextAndPosition(String? newText, {TextSelection? cunsorPosition}) {
    if (newText != null) {
      if (newText.isNotEmpty) {
        value = value.copyWith(
          text: newText,
          selection: cunsorPosition,
          composing: TextRange.empty,
        );
      } else {
        clear();
      }
    } 
  }
}
