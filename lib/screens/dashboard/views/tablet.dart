part of '../dashboard.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    final appProvider = Provider.of<AppProvider>(context);

    final authCubit = AuthCubit.cubit(context);
    final authData = authCubit.state.data;

    return Screen(
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
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.login,
              );
            }
          },
        ),
      ],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive.isTablet(context)
              ? const _TabletMiniDrawer()
              : const _Drawer(),
          Expanded(
            child: Padding(
              padding: Space.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.brightness_6_rounded,
                        color: Colors.grey,
                      ),
                      Switch(
                        activeColor: AppTheme.c!.primary,
                        value: appProvider.isDark,
                        onChanged: (value) {
                          appProvider.theme = value;
                        },
                      ),
                      Space.x!,
                      CircleAvatar(
                        radius: AppDimensions.normalize(7),
                        backgroundColor: AppTheme.c!.primary!.withAlpha(100),
                        child: Text(
                          // 'HA',
                          authData!.fullName.substring(0, 2).toUpperCase(),
                          style: AppText.l2!.copyWith(
                            color: AppTheme.c!.primary,
                          ),
                        ),
                      ),
                      Space.x!,
                      PopupMenuButton(
                        offset: Offset(0, AppDimensions.normalize(13)),
                        child: Row(
                          children: [
                            Text(
                              // 'Hamza',
                              authData.fullName,
                              style: AppText.l1b,
                            ),
                            Space.xf(0.15),
                            const Icon(
                              Icons.arrow_drop_down,
                            )
                          ],
                        ),
                        onSelected: (value) {
                          if (value == 'Profile') {
                            appProvider.index = 4;
                          } else {
                            authCubit.logout();
                          }
                        },
                        itemBuilder: (context) => ['Profile', 'Logout']
                            .map(
                              (e) => PopupMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                  Expanded(
                    child: DashboardUtils.views[appProvider.index],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
