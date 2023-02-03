part of '../discover.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Discover',
            style: AppText.h1b,
          ),
          Text(
            ' The Maldives is yours to explore!',
            style: AppText.l1,
          ),
          Space.y1!,
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              if (state is DiscoverFetchLoading) {
                return const LinearProgressIndicator();
              } else if (state is DiscoverFetchSuccess) {
                return Expanded(
                  child: SingleChildScrollView(
                    padding: Space.v,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: AppDimensions.normalize(2.5),
                      runSpacing: AppDimensions.normalize(5),
                      children: state.data!
                          .map(
                            (e) => WidgetAnimator(
                              child: _DiscoverCard(e: e),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                );
              } else if (state is DiscoverFetchFailed) {
                return Expanded(
                  child: Center(
                    child: Text(state.message!),
                  ),
                );
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
