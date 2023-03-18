import 'package:flutter/material.dart';

class StayInformedCategory extends StatelessWidget {
  const StayInformedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Stay Informed category items will be\npalaced Here!",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
