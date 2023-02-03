part of '../dashboard.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appProvider = Provider.of<AppProvider>(context);

    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('You are about to exit the application.'),
            actions: [
              TextButton(
                onPressed: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('No'),
              ),
            ],
          ),
        );
        return true;
      },
      child: Screen(
        overlayWidgets: [
          BlocConsumer<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthLogoutLoading) {
                return const FullScreenLoader(
                  loading: true,
                );
              }
              return const SizedBox();
            },
            listener: (context, state) {
              if (state is AuthLogoutSuccess) {
                Navigator.popAndPushNamed(
                  context,
                  AppRoutes.login,
                );
              }
            },
          ),
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: DashboardUtils.views[appProvider.index],
            ),
            Container(
              padding: Space.vf(0.75),
              decoration: BoxDecoration(
                color: AppTheme.c!.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -4),
                    blurRadius: 6,
                  )
                ],
              ),
              child: Row(
                children: DashboardUtils.itemLabels.asMap().entries.map(
                  (e) {
                    Color color = appProvider.index == e.key
                        ? AppTheme.c!.primary!
                        : Colors.grey;
                    return Expanded(
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          if (e.key == 3) {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.chat,
                            );
                          } else {
                            appProvider.index = e.key;
                          }
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DashboardUtils.icon(color, e.key)!,
                            Space.yf(0.2),
                            Text(
                              e.value,
                              style: AppText.l2!.copyWith(
                                color: color,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
