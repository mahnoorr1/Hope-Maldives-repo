part of '../tours.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  List<Tour> tours = [];
  double range = 500;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  void initState() {
    super.initState();
    tours = TourCubit.c(context).state.fetch!.data!;
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final state = AppProvider.state(context);

    final toursCubit = TourCubit.c(context);
    final hotelCubit = HotelsCubit.c(context);
    final islandCubit = IslandsCubit.c(context);
    final resortCubit = ResortsCubit.c(context);

    List popularPlaces = [];
    bool loadFailed = false;

    popularPlaces = hotelCubit.state.fetch!.data!
        .where((element) => element.isPopular)
        .toList();

    popularPlaces = List.from(popularPlaces)
      ..addAll(islandCubit.state.fetch!.data!
          .where((element) => element.isPopular)
          .toList());

    popularPlaces = List.from(popularPlaces)
      ..addAll(resortCubit.state.fetch!.data!
          .where((element) => element.isPopular)
          .toList());

    return Screen(
      overlayWidgets: [
        BlocConsumer<TourCubit, TourState>(
          listener: (context, state) {
            if (state.fetch is TourFetchFailed) {
              loadFailed = true;
              CustomSnackBars.failure(
                context,
                state.fetch!.message!,
              );
            }
          },
          builder: (context, state) {
            if (state.fetch is TourFetchLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
        )
      ],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Space.y!,
            Padding(
              padding: Space.all(0.5, 0),
              child: Text(
                'Plan your dream vacation in an island paradise, today!',
                style: AppText.h2b,
              ),
            ),
            Padding(
              padding: Space.h!,
              child: const Text(
                'We will ensure that you have access to the best tours, and assist you in creating a specialized, unique experience, for your holiday getaway!',
              ),
            ),
            Space.y1!,
            Container(
              padding: Space.all(0.5, 1),
              decoration: BoxDecoration(
                color: state.isDark ? AppTheme.c!.background : Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Adjust your range", style: AppText.l1b,),
                  FormBuilder(
                    key: _formKey,
                    child: FormBuilderSlider(
                      name: 'slider',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.min(6),
                      ]),
                      onChanged: (value) {
                        setState(() {
                          range = value as double;
                          if(toursCubit.state.fetch!.data !=null){
                          tours =
                              filterTours(toursCubit.state.fetch!.data!, range);
                          }
                          toursCubit.fetch();
                        });
                      },
                      min: 0,
                      max: 4000.0,
                      initialValue: 500.0,
                      divisions: 20,
                      activeColor: AppTheme.c!.primary,
                      inactiveColor: Colors.pink[100],
                    ),
                  ),
                  tours.isEmpty
                      ? SizedBox(
                          height: AppDimensions.normalize(100),
                          child: const Center(
                            child: Text("No Tours available in range"),
                          ),
                        )
                      : loadFailed
                          ? SizedBox(
                              height: AppDimensions.normalize(100),
                              child: const Center(
                                child: Text(
                                    "Something went wrong while Loading the Tours"),
                              ),
                            )
                          : SizedBox(
                              height: AppDimensions.normalize(140),
                              child: ListView.separated(
                                padding: Space.v,
                                scrollDirection: Axis.horizontal,
                                itemCount: tours.length,
                                separatorBuilder: (context, index) =>
                                    const VerticalDivider(
                                  color: Colors.transparent,
                                ),
                                itemBuilder: (context, index) {
                                  final tour = tours[index];

                                  return TourCard(
                                    isInverted: index.isOdd,
                                    tour: tour,
                                  );
                                },
                              ),
                            ),
                  Space.y1!,
                  Text(
                    'See all of the archipelagos!',
                    style: AppText.h3b,
                  ),
                  const Text(
                    'Explore and discover the most popular and worthwhile spots across the Maldives.',
                  ),
                  Space.y!,
                  SingleChildScrollView(
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
                  ),
                  Space.y!,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Tour> filterTours(List<Tour> tours, double range) {
    tours.sort(((a, b) => a.price.compareTo(b.price)));
    if (range == 4000) {
      return tours;
    }
    tours.retainWhere((element) => element.price <= range);
    return tours;
  }
}
