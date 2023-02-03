part of '../home.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appState = Provider.of<AppProvider>(context);
    final authCubit = AuthCubit.cubit(context);
    final authData = authCubit.state.data;

    final hotelCubit = HotelsCubit.c(context);
    final islandCubit = IslandsCubit.c(context);
    final resortCubit = ResortsCubit.c(context);
    final divingCubit = DivingCubit.c(context);
    final excursionCubit = ExcursionCubit.c(context);

    List popularPlaces = [];

    return SingleChildScrollView(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore the archipelago.',
                    style: AppText.h2!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  if (authData != null)
                    Text(
                      authData.fullName,
                      style: AppText.h2b,
                    ),
                ],
              ),
              if (authData != null)
                CircleAvatar(
                  radius: AppDimensions.normalize(15),
                  backgroundColor: AppTheme.c!.primary!.withAlpha(100),
                  child: Text(
                    authData.fullName.substring(0, 2).toUpperCase(),
                    style: AppText.h2!.copyWith(
                      color: AppTheme.c!.primary,
                    ),
                  ),
                ),
            ],
          ),
          Space.y2!,
          InkWell(
            onTap: () => Navigator.pushNamed(context, AppRoutes.filters),
            child: Container(
              height: AppDimensions.normalize(22),
              decoration: BoxDecoration(
                color: appState.isDark ? Colors.grey[850] : Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: Space.h,
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Space.x!,
                  Text(
                    'Search Name...',
                    style: AppText.b2!.copyWith(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Space.y1!,
          Container(
            padding: Space.all(),
            decoration: BoxDecoration(
              color:
                  appState.isDark ? AppTheme.c!.background : Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Places',
                      style: AppText.h3b,
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        AppRoutes.popularPlaces,
                        arguments: {
                          'places': popularPlaces,
                        },
                      ),
                      child: Text(
                        'See all',
                        style: AppText.b2b,
                      ),
                    )
                  ],
                ),
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
                      return SingleChildScrollView(
                        padding: Space.v,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: popularPlaces
                              .map(
                                (e) => PopularPlaceCard(
                                  property: e,
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
                Space.y!,
              ],
            ),
          ),
          Space.y1!,
          Padding(
            padding: Space.h!,
            child: Text(
              'Experience a journey through the Maldives like no other!',
              style: AppText.h3b,
            ),
          ),
          Space.y!,
          Container(
            padding: Space.all(0.3, 0.4),
            height: AppDimensions.normalize(19),
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
          Space.y!,
          Padding(
            padding: Space.h!,
            child: BlocBuilder<IslandsCubit, IslandsState>(
              builder: (context, state) {
                if (state.fetch is IslandsFetchLoading ||
                    hotelCubit.state.fetch is HotelsFetchLoading ||
                    resortCubit.state.fetch is ResortsFetchLoading) {
                  return const LinearProgressIndicator();
                }
                if (state.fetch is IslandsFetchSuccess &&
                    hotelCubit.state.fetch is HotelsFetchSuccess &&
                    resortCubit.state.fetch is ResortsFetchSuccess) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (appState.homeFilter == 0)
                        ...state.fetch!.data!.map(
                          (e) => WidgetAnimator(child: PropertyCard(e: e)),
                        ),
                      if (appState.homeFilter == 1)
                        ...resortCubit.state.fetch!.data!.map(
                          (e) => WidgetAnimator(child: PropertyCard(e: e)),
                        ),
                      if (appState.homeFilter == 2)
                        ...hotelCubit.state.fetch!.data!.map(
                          (e) => WidgetAnimator(child: PropertyCard(e: e)),
                        ),
                      if (appState.homeFilter == 3)
                        ...divingCubit.state.fetch!.data!.map(
                          (e) => WidgetAnimator(child: PropertyCard(e: e)),
                        ),
                      if (appState.homeFilter == 4)
                        ...excursionCubit.state.fetch!.data!.map(
                          (e) => WidgetAnimator(child: PropertyCard(e: e)),
                        ),
                    ],
                  );
                }

                return const SizedBox();
              },
            ),
          )
        ],
      ),
    );
  }
}
