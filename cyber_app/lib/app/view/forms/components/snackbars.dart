import 'package:flutter/material.dart';

SnackBar constantAppSnackBar(
  BuildContext context, {
  required String text,
}) =>
    SnackBar(
      backgroundColor: Theme.of(context).cardColor,
      content: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      action: SnackBarAction(
        label: "Got it",
        onPressed: () {},
        textColor: Theme.of(context).primaryColor,
      ),
    );
