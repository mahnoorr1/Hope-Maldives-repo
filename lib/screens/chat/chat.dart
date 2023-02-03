import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/models/message.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/providers/chat_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/widgets/chat_end_box.dart';
import 'package:hop_maldives/widgets/custom_text_field.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hop_maldives/widgets/buttons/app_icon_button.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

part 'views/widgets/_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Tablet(),
          ),
        ),
      ),
    );
  }
}
