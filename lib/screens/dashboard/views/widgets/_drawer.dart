part of '../../dashboard.dart';

class _Drawer extends StatelessWidget {
  const _Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.cubit(context);

    final appProvider = Provider.of<AppProvider>(context);
    final chat = Provider.of<ChatProvider>(context);

    return Container(
      padding: Space.all(1),
      width: AppDimensions.normalize(115),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            StaticAssets.fullLogo,
            height: AppDimensions.normalize(20),
          ),
          Space.y1!,
          ...DashboardUtils.itemLabels.asMap().entries.map(
                (e) => Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: ListTile(
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
                    tileColor: appProvider.index == e.key
                        ? AppTheme.c!.primary!.withAlpha(50)
                        : Colors.transparent,
                    leading: DashboardUtils.icon(
                      appProvider.index == e.key
                          ? AppTheme.c!.primary!
                          : Colors.grey,
                      e.key,
                    ),
                    title: Text(
                      e.value,
                      style: AppText.l1b!.copyWith(
                        color: appProvider.index == e.key
                            ? AppTheme.c!.primary!
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
          const Spacer(),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: ListTile(
              onTap: () => authCubit.logout(),
              leading: const Icon(
                Icons.exit_to_app_rounded,
                color: Colors.grey,
              ),
              title: Text(
                'Logout',
                style: AppText.l1b!.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
