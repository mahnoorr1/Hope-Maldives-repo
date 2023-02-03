part of '../../dashboard.dart';

class _TabletMiniDrawer extends StatelessWidget {
  const _TabletMiniDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.cubit(context);

    final appProvider = Provider.of<AppProvider>(context);
    final chat = Provider.of<ChatProvider>(context);

    return SizedBox(
      width: AppDimensions.normalize(25),
      child: Column(
        children: [
          Space.y1!,
          Image.asset(
            StaticAssets.logo,
            height: AppDimensions.normalize(15),
          ),
          Space.y1!,
          ...DashboardUtils.itemLabels.asMap().entries.map(
                (e) => InkWell(
                  onTap: () async {
                    if (chat.msgs.isEmpty) {
                      appProvider.index = e.key;
                    } else {
                      final cleaned = await ChatEndBox.warning(
                          context, ChatCubit.c(context));
                      if (cleaned) {
                        chat.setAllMessages = [];
                        appProvider.index = e.key;
                      }
                    }
                  },
                  child: Card(
                    elevation: 0,
                    color: appProvider.index == e.key
                        ? AppTheme.c!.primary!.withAlpha(50)
                        : Colors.transparent,
                    child: Padding(
                      padding: Space.all(),
                      child: DashboardUtils.icon(
                        appProvider.index == e.key
                            ? AppTheme.c!.primary!
                            : Colors.grey,
                        e.key,
                      ),
                    ),
                  ),
                ),
              ),
          const Spacer(),
          IconButton(
            onPressed: () => authCubit.logout(),
            icon: const Icon(
              Icons.exit_to_app_rounded,
              color: Colors.grey,
            ),
          ),
          Space.y1!,
        ],
      ),
    );
  }
}
