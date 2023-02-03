---
to: lib/screens/<%= h.changeCase.snake(name) %>/views/tablet.dart
---

part of '../<%= h.changeCase.snake(name) %>.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('Tablet View'),
      ),
    );
  }
}
