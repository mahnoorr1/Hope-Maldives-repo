part of '../../chat.dart';

class _MessageBubble extends StatelessWidget {
  final Message message;
  final bool isUser;
  const _MessageBubble({
    Key? key,
    required this.message,
    required this.isUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (isUser && Responsive.isMobile(context))
          Space.xf(5)
        else
          const Spacer(),
        Expanded(
          child: Container(
            margin: Space.v,
            padding: Space.all(1, 0.6),
            decoration: BoxDecoration(
              color: isUser ? AppTheme.c!.primary! : Colors.grey,
              borderRadius: isUser
                  ? BorderRadius.only(
                      topRight: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                      topLeft: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                      bottomLeft: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                    )
                  : BorderRadius.only(
                      topRight: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                      topLeft: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                      bottomRight: Radius.circular(
                        AppDimensions.normalize(5),
                      ),
                    ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  isUser ? 'You' : 'Admin',
                  style: AppText.l2b!.copyWith(
                    color: Colors.white.withAlpha(150),
                  ),
                ),
                Space.y!,
                Text(
                  message.content,
                  style: AppText.b2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Space.yf(0.25),
                Text(
                  DateFormat('h:mm:aa').format(
                    DateTime.fromMillisecondsSinceEpoch(message.createdAt),
                  ),
                  style: AppText.l2!.copyWith(
                    color: Colors.white.withAlpha(150),
                  ),
                )
              ],
            ),
          ),
        ),
        if (!isUser && Responsive.isMobile(context)) Space.xf(5),
        if (!isUser && !Responsive.isMobile(context)) const Spacer(),
      ],
    );
  }
}
