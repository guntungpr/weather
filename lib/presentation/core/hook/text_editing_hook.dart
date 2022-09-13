import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather/presentation/core/text_editing/text_editing_controller_workaround.dart';

TextEditingControllerWorkaround useCodeTextEditingController({String? initialText}) {
  return use(_CodeTextEditingController(initialText: initialText));
}

class _CodeTextEditingController extends Hook<TextEditingControllerWorkaround> {
  const _CodeTextEditingController({this.initialText, this.listener});
  final String? initialText;
  final void Function(String)? listener;

  @override
  _CodeTextEditingControllerState createState() => _CodeTextEditingControllerState();
}

class _CodeTextEditingControllerState extends HookState<TextEditingControllerWorkaround, _CodeTextEditingController> {
  late TextEditingControllerWorkaround _controller;

  @override
  void initHook() {
    super.initHook();
    useTextEditingController();
    _controller = TextEditingControllerWorkaround(text: hook.initialText);
  }

  @override
  TextEditingControllerWorkaround build(BuildContext context) => _controller;

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }
}
