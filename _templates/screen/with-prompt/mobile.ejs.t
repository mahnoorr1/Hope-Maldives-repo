---
to: lib/screens/<%= h.changeCase.snake(name) %>/views/mobile.dart
---

part of '../<%= h.changeCase.snake(name) %>.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('Mobile View'),
      ),
    );
  }
}
