---
to: lib/screens/<%= h.changeCase.snake(name) %>/views/desktop.dart
---

part of '../<%= h.changeCase.snake(name) %>.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('Desktop View'),
      ),
    );
  }
}
