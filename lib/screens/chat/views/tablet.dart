part of '../chat.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  void initState() {
    ChatCubit.c(context).fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final chatCubit = ChatCubit.c(context);
    final state = AppProvider.state(context);
    final chat = Provider.of<ChatProvider>(context);

    return Padding(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Chat',
            style: AppText.l1b!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Text(
            'We have your back!',
            style: AppText.h1b,
          ),
          Text(
            'Let us know how can we help you!',
            style: AppText.l1,
          ),
          Space.y1!,
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                if (state.send is ChatSendLoading ||
                    state.fetch is ChatFetchLoading) {
                  if (chat.msgs.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'How may we assist you?',
                            style: AppText.b2b,
                          ),
                          const LinearProgressIndicator(),
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
                          itemCount: chat.msgs.length,
                          itemBuilder: (context, index) {
                            return _MessageBubble(
                              message: chat.msgs[index],
                              isUser: FirebaseAuth.instance.currentUser!.uid ==
                                  chat.msgs[index].from,
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
                    chat.setAllMessages = List.generate(
                      state.fetch!.data!.docs.length,
                      (index) => Message.fromMap(
                        state.fetch!.data!.docs[index].data(),
                      ),
                    );
                  }

                  if (chat.msgs.isEmpty) {
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
                    itemCount: chat.msgs.length,
                    itemBuilder: (context, index) {
                      return _MessageBubble(
                        message: chat.msgs[index],
                        isUser: FirebaseAuth.instance.currentUser!.uid ==
                            chat.msgs[index].from,
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

                    chat.sendMsg = message;

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
