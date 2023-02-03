part of '../about_us.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.bottomLeft,
      //     end: Alignment.topRight,
      //     colors: [
      //       //   Color(0xff0b3553),
      //       //   AppTheme.c!.primary!,
      //       Color(0xfff15b40),
      //       Color(0xffef8c48),
      //       Color(0xfff1bb4f),
      //       Color(0xfff1ec70),
      //     ],
      //   ),
      // ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: Responsive.isMobile(context)
              ? CrossAxisAlignment.stretch
              : CrossAxisAlignment.start,
          children: [
            Space.y2!,
            if (Responsive.isMobile(context))
              Align(
                alignment: Alignment.centerLeft,
                child: BackButton(
                  onPressed: () => Navigator.pop(context),
                  color: AppTheme.c!.text!,
                ),
              ),
            Image.asset(
              StaticAssets.fullLogo,
              height: Responsive.isMobile(context)
                  ? AppDimensions.normalize(60)
                  : AppDimensions.normalize(40),
            ),
            Space.y1!,
            Padding(
              padding: Responsive.isMobile(context) ? Space.h! : Space.hf(3),
              child: Text(
                StaticAssets.aboutUs,
                style: AppText.l1!.copyWith(
                  color: AppTheme.c!.text!,
                  height: 1.3,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Space.y2!,
            Padding(
              padding:
                  Responsive.isMobile(context) ? Space.hf(5) : Space.hf(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _socialIcons(
                    icon: FontAwesomeIcons.instagram,
                    func: () => LauncherUtil.openSocialProfiles(0),
                  ),
                  _socialIcons(
                    icon: FontAwesomeIcons.facebook,
                    func: () => LauncherUtil.openSocialProfiles(1),
                  ),
                  _socialIcons(
                    icon: FontAwesomeIcons.twitter,
                    func: () => LauncherUtil.openSocialProfiles(2),
                  ),
                ],
              ),
            ),
            Space.y1!,
            _emailsText(text: 'info@hopemaldives.com'),
            _emailsText(text: 'reservations@hopmaldives.com'),
            if (!kIsWeb) ...[
              Space.y1!,
              Center(
                child: Text(
                  'App version ${AppInfo.versionName}',
                  style: AppText.l1b!.cl(
                    AppTheme.c!.text!,
                  ),
                ),
              ),
              Space.y!,
            ]
          ],
        ),
      ),
    );
  }

  Widget _socialIcons({IconData? icon, Function()? func}) {
    return GestureDetector(
      onTap: func,
      child: CircleAvatar(
        radius: AppDimensions.normalize(10),
        child: Icon(icon!),
      ),
    );
  }

  Widget _emailsText({String? text}) => Center(
        child: Text(
          text!,
          style: AppText.l1!.copyWith(
            color: AppTheme.c!.primary,
          ),
        ),
      );
}
