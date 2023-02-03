part of '../onboarding.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final state = Provider.of<AppProvider>(context);
    bool isLastIndex =
        state.setOnBoardingIndex == OnBoardingUtils.pages.length - 1;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int value) => state.setOnBoardingIndex = value,
            controller: state.onBoardingPageController,
            children: OnBoardingUtils.pages.asMap().entries.map((e) {
              return e.value;
            }).toList(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin:
                  Responsive.isTablet(context) ? Space.all(1) : Space.all(0.5),
              child: TextButton(
                child: const Text('Skip'),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, AppRoutes.login),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        children: [
          Space.x2!,
          ...OnBoardingUtils.pages.asMap().entries.map(
                (e) => _Indicator(
                  isSelected: state.onBoardingIndex == e.key,
                ),
              ),
          Space.xm!,
          FloatingActionButton(
            backgroundColor: AppTheme.c!.primary,
            child: isLastIndex
                ? const Icon(Icons.check)
                : const Icon(
                    Icons.arrow_forward,
                  ),
            onPressed: () {
              if (isLastIndex) {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              } else {
                state.onBoardingPageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          )
        ],
      ),
    );
  }
}
