part of '../tours.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  List<Tour> tours = [];
  double range = 500;
  bool loadFailed = false;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  void initState() {
    super.initState();
    tours = TourCubit.c(context).state.fetch!.data!;
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final toursCubit = TourCubit.c(context);

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
        padding: Space.all(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tours',
              style: AppText.l1b!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
            Text(
              'Plan your dream vacation in an island paradise, today!',
              style: AppText.h1b,
            ),
            Space.y!,
            Text(
              'We will ensure that you have access to the best tours, and assist you in creating a specialized, unique experience, for your holiday getaway!',
              style: AppText.l2,
            ),
            Space.y1!,
            Text(
              "Adjust your range",
              style: AppText.l1b,
            ),
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
                    tours = filterTours(toursCubit.state.fetch!.data!, range);
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
            Space.y1!,
            tours.isEmpty
                ? const Center(
                    child: Text("No Tours available in range"),
                  )
                : loadFailed
                    ? const Center(
                        child: Text(
                            "Something went wrong while Loading the Tours, Try Again"),
                      )
                    : Wrap(
                        spacing: AppDimensions.normalize(2),
                        runSpacing: AppDimensions.normalize(5),
                        children: tours
                            .asMap()
                            .entries
                            .map(
                              (e) => TourCard(
                                isInverted: false,
                                tour: e.value,
                              ),
                            )
                            .toList(),
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
