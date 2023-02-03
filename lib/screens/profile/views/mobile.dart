part of '../profile.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appProvider = Provider.of<AppProvider>(context);
    final authCubit = AuthCubit.cubit(context);
    final authData = authCubit.state.data;

    return Padding(
      padding: Space.all(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profile',
                style: AppText.h1b,
              ),
              !kIsWeb && Platform.isIOS
                  ? CupertinoSwitch(
                      value: appProvider.isDark,
                      activeColor: AppTheme.c!.primary,
                      onChanged: (value) {
                        appProvider.theme = value;
                      },
                    )
                  : Switch(
                      value: appProvider.isDark,
                      activeColor: AppTheme.c!.primary,
                      onChanged: (value) {
                        appProvider.theme = value;
                      },
                    ),
            ],
          ),
          Space.y1!,
          Row(
            children: [
              CircleAvatar(
                radius: AppDimensions.normalize(13),
                backgroundColor: AppTheme.c!.primary!.withAlpha(100),
                child: Text(
                  // 'HA',
                  authData!.fullName.substring(0, 2).toUpperCase(),
                  style: AppText.h3!.copyWith(
                    color: AppTheme.c!.primary,
                  ),
                ),
              ),
              Space.x!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // 'Hamza',
                    authData.fullName,
                    style: AppText.h2,
                  ),
                  Text(
                    // 'hamza@gmail.com',
                    authData.email,
                    style: AppText.b2!.copyWith(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
          Space.y1!,
          ...ListTile.divideTiles(
            color: Colors.grey,
            tiles: ProfileUtils.options.map(
              (e) => Padding(
                padding: Space.v!,
                child: ListTile(
                  onTap: () {
                    if (e['route'] == '/logout') {
                      authCubit.logout();
                      appProvider.index = 0;
                    } else if (e['route'] == AppRoutes.requests) {
                      Navigator.pushNamed(context, AppRoutes.requests);
                    } else if (e['route'] == AppRoutes.aboutUs) {
                      Navigator.pushNamed(context, AppRoutes.aboutUs);
                    } else if (e['route'] == '/rate') {
                      launchUrl(
                        Uri.parse(
                          "https://play.google.com/store/apps/details?id=com.hmz.al_quran",
                        ),
                      );
                    } else if (e['route'] == '/share') {
                      Share.share(
                        'Looking forward to spend your vacations at some peaceful place within your budget?\n\nDownload Hop Maldives Now! And get started.\n\nPlay Store:\n\nApp Store:',
                      );
                    }
                  },
                  leading: e['icon'],
                  title: Text(
                    e['label'],
                    style: AppText.l1b,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: AppDimensions.normalize(7),
                  ),
                ),
              ),
            ),
          ),
          if (!kIsWeb) ...[
            Space.ym!,
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'App version',
                      style: AppText.l1b!.cl(
                        AppTheme.c!.text!,
                      ),
                    ),
                    TextSpan(
                      text: " ${AppInfo.versionName}",
                      style: AppText.l1b!.cl(
                        AppTheme.c!.primary!,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Space.y1!,
          ],
        ],
      ),
    );
  }
}
