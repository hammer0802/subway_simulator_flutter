import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

Future<bool> showDialogMessage(BuildContext context,
    {String title, String message, bool isOkOnly = false}) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) =>
        _buildDialog(context, title, message, isOkOnly: isOkOnly),
  );
}

Widget _buildDialog(BuildContext context, String title, String message,
    {bool isOkOnly = false}) {
  if (title == null && message == null) {
    throw ArgumentError('titleとmessageのどちらともnullです。どちらかは指定してください。');
  }
  // ignore: omit_local_variable_types, prefer_collection_literals
  final List<Widget> actions = List();
  if (!isOkOnly) {
    actions.add(
      _dialogButton(
        context,
        text: 'Cancel',
        isPositiveButton: false,
      ),
    );
  }
  actions.add(
    _dialogButton(
      context,
      text: 'OK',
      isPositiveButton: true,
    ),
  );
  return AlertDialog(
    title: title != null ? Text(title) : null,
    content: message != null ? Text(message) : null,
    actions: actions,
  );
}

Widget _dialogButton(BuildContext context,
    {String text, bool isPositiveButton}) {
  return FlatButton(
    child: Text(
      text,
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.pop(context, isPositiveButton);
    },
  );
}
