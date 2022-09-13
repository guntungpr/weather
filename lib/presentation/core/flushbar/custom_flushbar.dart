import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomFlushbar {
  CustomFlushbar(
    this.context, {
    required this.message,
    required this.eCustomFlushbarType,
    this.onPressed,
    this.onPressedMessage = '',
  });

  final BuildContext context;
  final String message;
  final ECustomFlushbarType eCustomFlushbarType;
  final void Function()? onPressed;
  final String onPressedMessage;

  Widget leadingIcon() {
    switch (eCustomFlushbarType) {
      case ECustomFlushbarType.success:
        return Icon(
          Icons.check_circle,
          color: Colors.green[300],
        );
      case ECustomFlushbarType.information:
        return Icon(
          Icons.info_outline,
          color: Colors.blue[300],
        );
      case ECustomFlushbarType.error:
        return Icon(
          Icons.warning,
          color: Colors.red[300],
        );
    }
  }

  void show() {
    Flushbar(
      message: message,
      icon: leadingIcon(),
      borderRadius: BorderRadius.circular(8),
      margin: const EdgeInsets.all(8),
      duration: const Duration(seconds: 3),
      mainButton: onPressed != null
          ? TextButton(
              onPressed: onPressed,
              child: Text(
                onPressedMessage,
                style: const TextStyle(color: Colors.yellow),
              ),
            )
          : Container(),
    ).show(context);
  }
}

enum ECustomFlushbarType {
  success,
  information,
  error,
}
