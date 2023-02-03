---
to: lib/screens/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>.dart
---
import 'package:flutter/material.dart';
import 'package:hop_maldives/responsive/responsive.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class <%=h.changeCase.pascal(name)%>Screen extends StatelessWidget {
  const <%=h.changeCase.pascal(name)%>Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Desktop(),
          ),
        ),
      ),
    );
  }
}
