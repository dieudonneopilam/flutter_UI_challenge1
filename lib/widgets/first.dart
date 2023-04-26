import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList(String this.training,
      {super.key, required this.title, required this.subtitle});

  final String? title;
  final String? subtitle;
  final String? training;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: ListTile(
        title: Text(
          title.toString(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle.toString(),
          style: const TextStyle(fontSize: 18),
        ),
        trailing: Text(
          training.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
