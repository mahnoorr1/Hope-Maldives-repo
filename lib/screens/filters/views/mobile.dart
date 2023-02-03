part of '../filters.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  List searchedProperty = [];
  List properties = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final hotelCubit = HotelsCubit.c(context);
      final islandCubit = IslandsCubit.c(context);
      final resortCubit = ResortsCubit.c(context);

      properties = List.from(properties)
        ..addAll(
          hotelCubit.state.fetch!.data!,
        );
      properties = List.from(properties)
        ..addAll(
          islandCubit.state.fetch!.data!,
        );
      properties = List.from(properties)
        ..addAll(
          resortCubit.state.fetch!.data!,
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AppProvider>(context);

    final hotelCubit = HotelsCubit.c(context);
    final divingCubit = DivingCubit.c(context);
    final islandCubit = IslandsCubit.c(context);
    final resortCubit = ResortsCubit.c(context);
    final excursionCubit = ExcursionCubit.c(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Space.all(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Filters',
                    style: AppText.h2b,
                  )
                ],
              ),
              Space.y1!,
              FormBuilder(
                key: state.filterState,
                child: CustomTextField(
                  name: 'filter',
                  hint: 'Search name...',
                  textInputType: TextInputType.name,
                  autoFocus: true,
                  prefixIcon: const Icon(Icons.search),
                  onChangeFtn: (String? value) {
                    if (value!.isEmpty) {
                      setState(() {
                        searchedProperty = [];
                      });
                    }

                    if (value.isNotEmpty) {
                      setState(() {
                        var lowerCaseQuery = value.toLowerCase();

                        searchedProperty = properties.where((prop) {
                          final charityName = prop!.name!
                              .toLowerCase()
                              .contains(lowerCaseQuery);
                          return charityName;
                        }).toList(growable: false)
                          ..sort(
                            (a, b) => a!.name!
                                .toLowerCase()
                                .indexOf(lowerCaseQuery)
                                .compareTo(
                                  b!.name!
                                      .toLowerCase()
                                      .indexOf(lowerCaseQuery),
                                ),
                          );
                      });
                    }

                    return null;
                  },
                ),
              ),
              Space.y!,
              if (searchedProperty.isEmpty)
                Wrap(
                  spacing: AppDimensions.normalize(2),
                  children: AppUtils.filters
                      .asMap()
                      .entries
                      .map(
                        (e) => InkWell(
                          onTap: () => state.currentFilter = e.key,
                          child: Chip(
                            backgroundColor: state.currentFilter == e.key
                                ? AppTheme.c!.primary
                                : state.isDark
                                    ? Colors.grey[850]
                                    : Colors.grey[300],
                            label: Text(
                              e.value,
                              style: AppText.l2!.copyWith(
                                color: state.currentFilter == e.key
                                    ? Colors.white
                                    : AppTheme.c!.text,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              Space.y!,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: searchedProperty.isNotEmpty
                        ? searchedProperty
                            .map(
                              (e) => ExpandedCard(
                                property: e,
                              ),
                            )
                            .toList()
                        : [
                            if (state.currentFilter == 0)
                              ...islandCubit.state.fetch!.data!.map(
                                (e) => ExpandedCard(
                                  property: e,
                                ),
                              ),
                            if (state.currentFilter == 1)
                              ...resortCubit.state.fetch!.data!.map(
                                (e) => ExpandedCard(
                                  property: e,
                                ),
                              ),
                            if (state.currentFilter == 2)
                              ...hotelCubit.state.fetch!.data!.map(
                                (e) => ExpandedCard(
                                  property: e,
                                ),
                              ),
                            if (state.currentFilter == 3)
                              ...divingCubit.state.fetch!.data!.map(
                                (e) => ExpandedCard(
                                  property: e,
                                ),
                              ),
                            if (state.currentFilter == 4)
                              ...excursionCubit.state.fetch!.data!.map(
                                (e) => ExpandedCard(
                                  property: e,
                                ),
                              ),
                          ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
