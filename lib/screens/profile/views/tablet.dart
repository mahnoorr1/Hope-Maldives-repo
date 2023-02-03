part of '../profile.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Padding(
      padding: Space.all(),
      child: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: AppText.l1b!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
            Text(
              'Full Name',
              style: AppText.h1b,
            ),
            Text(
              'email@gmail.com',
              style: AppText.l1!.copyWith(
                color: Colors.grey,
              ),
            ),
            Space.y1!,
            TabBar(
              indicatorColor: AppTheme.c!.primary,
              tabs: [
                for (int i = 0; i < 3; i++)
                  Tab(
                    icon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProfileUtils.options[i]['icon'],
                        Space.x!,
                        Text(
                          ProfileUtils.options[i]['label'],
                          style: AppText.l1b!.cl(AppTheme.c!.text!),
                        )
                      ],
                    ),
                  )
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  RequestsScreen(),
                  AboutUsScreen(),
                  Text('Privacy Policy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
