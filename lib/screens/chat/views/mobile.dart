part of '../chat.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  List<Message> msgs = [];

  @override
  void initState() {
    ChatCubit.c(context).fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final chatCubit = ChatCubit.c(context);
    final state = AppProvider.state(context);

    return Padding(
      padding: Space.all(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              BackButton(
                onPressed: () {
                  if (msgs.isEmpty) {
                    Navigator.pop(context);
                  } else {
                    ChatEndBox.warning(context, chatCubit);
                  }
                },
              ),
              Text(
                'Chat',
                style: AppText.h1b,
              ),
            ],
          ),
          Space.y!,
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                if (state.send is ChatSendLoading ||
                    state.fetch is ChatFetchLoading) {
                  if (msgs.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'We would love to hear from you! Let\'s get started by planning your dream vacation.',
                            style: AppText.b1b,
                            textAlign: TextAlign.center,
                          ),
                          Space.y!,
                          Text(
                            'How may we assist you?',
                            style: AppText.l1b,
                          ),
                        ],
                      ),
                    );
                  }
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          reverse: true,
                          padding: Space.all(),
                          itemCount: msgs.length,
                          itemBuilder: (context, index) {
                            return _MessageBubble(
                              message: msgs[index],
                              isUser: FirebaseAuth.instance.currentUser!.uid ==
                                  msgs[index].from,
                            );
                          },
                        ),
                      ),
                      const LinearProgressIndicator(),
                    ],
                  );
                } else if (state.fetch is ChatFetchSuccess ||
                    state.send is ChatSendSuccess) {
                  if (state.fetch!.data != null) {
                    msgs = List.generate(
                      state.fetch!.data!.docs.length,
                      (index) => Message.fromMap(
                        state.fetch!.data!.docs[index].data(),
                      ),
                    );
                  }

                  if (msgs.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'We would love to hear from you!\nLet\'s get started by planning your dream vacation.',
                            style: AppText.b1b,
                            textAlign: TextAlign.center,
                          ),
                          Space.y!,
                          Text(
                            'How may we assist you?',
                            style: AppText.l1b,
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    reverse: true,
                    padding: Space.all(),
                    itemCount: msgs.length,
                    itemBuilder: (context, index) {
                      return _MessageBubble(
                        message: msgs[index],
                        isUser: FirebaseAuth.instance.currentUser!.uid ==
                            msgs[index].from,
                      );
                    },
                  );
                }
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'We would love to hear from you!\nLet\'s get started by planning your dream vacation.',
                        style: AppText.b1b,
                        textAlign: TextAlign.center,
                      ),
                      Space.y!,
                      Text(
                        'How may we assist you?',
                        style: AppText.l1b,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Space.y!,
          Row(
            children: [
              Expanded(
                child: FormBuilder(
                  key: state.chatFormState,
                  child: CustomTextField(
                    name: 'msg',
                    hint: 'Start typing...',
                    textInputType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    validatorFtn: FormBuilderValidators.required(
                      errorText: 'Cannot send empty message',
                    ),
                  ),
                ),
              ),
              Space.x!,
              AppIconButton(
                color: AppTheme.c!.primary,
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                onPressed: () {
                  if (state.chatFormState.currentState!.validate()) {
                    String content = state
                        .chatFormState.currentState!.fields['msg']!.value
                        .toString()
                        .trim();

                    final message = Message(
                      to: 'YZHcWqfcTnVUoxkfSs21YuTh89p2',
                      from: FirebaseAuth.instance.currentUser!.uid,
                      content: content,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                    );

                    setState(() {
                      msgs.insert(0, message);
                    });

                    chatCubit.send(message);
                    chatCubit.fetch();

                    state.chatFormState.currentState!.reset();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
