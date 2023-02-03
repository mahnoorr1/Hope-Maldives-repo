part of '../home.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appState = Provider.of<AppProvider>(context);

    final hotelCubit = HotelsCubit.c(context);
    final islandCubit = IslandsCubit.c(context);
    final resortCubit = ResortsCubit.c(context);
    final divingCubit = DivingCubit.c(context);
    final excursionCubit = ExcursionCubit.c(context);

    List popularPlaces = [];

    return SingleChildScrollView(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Home',
            style: AppText.l1b!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Text(
            'Welcome to Hop Maldives',
            style: AppText.h1b,
          ),
          Space.y!,
          Text(
            'Your one-stop shop and guide for venturing forth into the Maldives.',
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.text,
            ),
          ),
          Space.y1!,
          Text(
            'Popular Places',
            style: AppText.b1b,
          ),
          Text(
            'Popular places based on user reviews',
            style: AppText.l2,
          ),
          Space.y!,
          BlocBuilder<HotelsCubit, HotelsState>(
            builder: (context, state) {
              if (state.fetch is HotelsFetchLoading ||
                  islandCubit.state.fetch is IslandsFetchLoading ||
                  resortCubit.state.fetch is ResortsFetchLoading) {
                return const LinearProgressIndicator();
              }

              if (state.fetch is HotelsFetchSuccess) {
                popularPlaces = state.fetch!.data!
                    .where((element) => element.isPopular)
                    .toList();
              }
              if (islandCubit.state.fetch is IslandsFetchSuccess) {
                popularPlaces = List.from(popularPlaces)
                  ..addAll(islandCubit.state.fetch!.data!
                      .where((element) => element.isPopular)
                      .toList());
              }
              if (resortCubit.state.fetch is ResortsFetchSuccess) {
                popularPlaces = List.from(popularPlaces)
                  ..addAll(resortCubit.state.fetch!.data!
                      .where((element) => element.isPopular)
                      .toList());
              }

              if (state.fetch is HotelsFetchSuccess &&
                  islandCubit.state.fetch is IslandsFetchSuccess &&
                  resortCubit.state.fetch is ResortsFetchSuccess) {
                popularPlaces.shuffle();
                return Wrap(
                  spacing: AppDimensions.normalize(5),
                  runSpacing: AppDimensions.normalize(5),
                  children: popularPlaces
                      .map(
                        (e) => PopularPlaceCard(property: e),
                      )
                      .toList(),
                );
              }
              return const SizedBox();
            },
          ),
          Space.y1!,
          Text(
            'Experience a journey through the Maldives like no other!',
            style: AppText.h3b,
          ),
          Space.y!,
          Container(
            padding: Space.all(0.3, 0.25),
            width: AppDimensions.normalize(150),
            height: AppDimensions.normalize(14),
            decoration: BoxDecoration(
              color: appState.isDark
                  ? AppTheme.c!.backgroundSub
                  : Colors.grey[200],
              borderRadius: BorderRadius.circular(
                UIProps.radius,
              ),
            ),
            child: Row(
              children: AppUtils.filters
                  .asMap()
                  .entries
                  .map(
                    (e) => Expanded(
                      child: InkWell(
                        onTap: () => appState.homeFilter = e.key,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: Space.all(0.20),
                          decoration: BoxDecoration(
                            color: appState.homeFilter == e.key
                                ? AppTheme.c!.primary
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(
                              UIProps.radius,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              e.value,
                              style: AppText.l2!.copyWith(
                                color: appState.homeFilter == e.key
                                    ? Colors.white
                                    : AppTheme.c!.text,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Space.y1!,
          BlocBuilder<IslandsCubit, IslandsState>(
            builder: (context, state) {
              if (state.fetch is IslandsFetchLoading ||
                  hotelCubit.state.fetch is HotelsFetchLoading ||
                  resortCubit.state.fetch is ResortsFetchLoading) {
                return const LinearProgressIndicator();
              }
              if (state.fetch is IslandsFetchSuccess &&
                  hotelCubit.state.fetch is HotelsFetchSuccess &&
                  resortCubit.state.fetch is ResortsFetchSuccess) {
                return Wrap(
                  spacing: AppDimensions.normalize(5),
                  runSpacing: AppDimensions.normalize(5),
                  children: [
                    if (appState.homeFilter == 0)
                      ...state.fetch!.data!.map(
                        (e) => WidgetAnimator(
                            child: PopularPlaceCard(property: e)),
                      ),
                    if (appState.homeFilter == 1)
                      ...resortCubit.state.fetch!.data!.map(
                        (e) => WidgetAnimator(
                            child: PopularPlaceCard(property: e)),
                      ),
                    if (appState.homeFilter == 2)
                      ...hotelCubit.state.fetch!.data!.map(
                        (e) => WidgetAnimator(
                            child: PopularPlaceCard(property: e)),
                      ),
                    if (appState.homeFilter == 3)
                      ...divingCubit.state.fetch!.data!.map(
                        (e) => WidgetAnimator(
                            child: PopularPlaceCard(property: e)),
                      ),
                    if (appState.homeFilter == 4)
                      ...excursionCubit.state.fetch!.data!.map(
                        (e) => WidgetAnimator(
                            child: PopularPlaceCard(property: e)),
                      ),
                  ],
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
