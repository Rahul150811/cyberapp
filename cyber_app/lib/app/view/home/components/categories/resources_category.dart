import 'package:flutter/material.dart';

class ResourcesCategory extends StatelessWidget {
  const ResourcesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Resources category items will be\npalaced Here!",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
