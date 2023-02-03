part of '../discover.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: AppText.l1b!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Text(
            'The Maldives is yours to explore!',
            style: AppText.h1b,
          ),
          Space.y1!,
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              if (state is DiscoverFetchLoading) {
                return const LinearProgressIndicator();
              } else if (state is DiscoverFetchSuccess) {
                return Wrap(
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
                );
              } else if (state is DiscoverFetchFailed) {
                return Center(
                  child: Text(state.message!),
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
