import 'dart:convert';

class Facilities {
  final bool airport;
  final bool atms;
  final bool beaches;
  final bool bikiniBeaches;
  final bool coffeeShops;
  final bool drivingSchool;
  final bool excursionClubs;
  final bool ferryService;
  final bool gym;
  final bool harbour;
  final bool hospitals;
  final bool hotels;
  final bool playgrounds;
  final bool restaurants;
  final bool retailShops;
  final bool souvenirShops;
  final bool surfingPoint;
  final bool swimmingAreas;
  final bool ac;
  final bool airportShuttle;
  final bool amenities;
  final bool bathTub;
  final bool bikeRental;
  final bool carRentals;
  final bool covid19Safety;
  final bool creditAndDebitCard;
  final bool eventsAndEntertainment;
  final bool guestRelations;
  final bool hotWater;
  final bool houseKeeping;
  final bool kidsClub;
  final bool laundry;
  final bool lounge;
  final bool parking;
  final bool pool;
  final bool roomService;
  final bool security;
  final bool souvenirShop;
  final bool spa;
  final bool transfers;
  final bool wifi;

  Facilities({
    required this.airport,
    required this.atms,
    required this.beaches,
    required this.bikiniBeaches,
    required this.coffeeShops,
    required this.drivingSchool,
    required this.excursionClubs,
    required this.ferryService,
    required this.gym,
    required this.harbour,
    required this.hospitals,
    required this.hotels,
    required this.playgrounds,
    required this.restaurants,
    required this.retailShops,
    required this.souvenirShops,
    required this.surfingPoint,
    required this.swimmingAreas,
    required this.ac,
    required this.airportShuttle,
    required this.amenities,
    required this.bathTub,
    required this.bikeRental,
    required this.carRentals,
    required this.covid19Safety,
    required this.creditAndDebitCard,
    required this.eventsAndEntertainment,
    required this.guestRelations,
    required this.hotWater,
    required this.houseKeeping,
    required this.kidsClub,
    required this.laundry,
    required this.lounge,
    required this.parking,
    required this.pool,
    required this.roomService,
    required this.security,
    required this.souvenirShop,
    required this.spa,
    required this.transfers,
    required this.wifi,
  });

  Facilities copyWith({
    bool? airport,
    bool? atms,
    bool? beaches,
    bool? bikiniBeaches,
    bool? coffeeShops,
    bool? drivingSchool,
    bool? excursionClubs,
    bool? ferryService,
    bool? gym,
    bool? harbour,
    bool? hospitals,
    bool? hotels,
    bool? playgrounds,
    bool? restaurants,
    bool? retailShops,
    bool? souvenirShops,
    bool? surfingPoint,
    bool? swimmingAreas,
    bool? ac,
    bool? airportShuttle,
    bool? amenities,
    bool? bathTub,
    bool? bikeRental,
    bool? carRentals,
    bool? covid19Safety,
    bool? creditAndDebitCard,
    bool? eventsAndEntertainment,
    bool? guestRelations,
    bool? hotWater,
    bool? houseKeeping,
    bool? kidsClub,
    bool? laundry,
    bool? lounge,
    bool? parking,
    bool? pool,
    bool? roomService,
    bool? security,
    bool? souvenirShop,
    bool? spa,
    bool? transfers,
    bool? wifi,
  }) {
    return Facilities(
      airport: airport ?? this.airport,
      atms: atms ?? this.atms,
      beaches: beaches ?? this.beaches,
      bikiniBeaches: bikiniBeaches ?? this.bikiniBeaches,
      coffeeShops: coffeeShops ?? this.coffeeShops,
      drivingSchool: drivingSchool ?? this.drivingSchool,
      excursionClubs: excursionClubs ?? this.excursionClubs,
      ferryService: ferryService ?? this.ferryService,
      gym: gym ?? this.gym,
      harbour: harbour ?? this.harbour,
      hospitals: hospitals ?? this.hospitals,
      hotels: hotels ?? this.hotels,
      playgrounds: playgrounds ?? this.playgrounds,
      restaurants: restaurants ?? this.restaurants,
      retailShops: retailShops ?? this.retailShops,
      souvenirShops: souvenirShops ?? this.souvenirShops,
      surfingPoint: surfingPoint ?? this.surfingPoint,
      swimmingAreas: swimmingAreas ?? this.swimmingAreas,
      ac: ac ?? this.ac,
      airportShuttle: airportShuttle ?? this.airportShuttle,
      amenities: amenities ?? this.amenities,
      bathTub: bathTub ?? this.bathTub,
      bikeRental: bikeRental ?? this.bikeRental,
      carRentals: carRentals ?? this.carRentals,
      covid19Safety: covid19Safety ?? this.covid19Safety,
      creditAndDebitCard: creditAndDebitCard ?? this.creditAndDebitCard,
      eventsAndEntertainment:
          eventsAndEntertainment ?? this.eventsAndEntertainment,
      guestRelations: guestRelations ?? this.guestRelations,
      hotWater: hotWater ?? this.hotWater,
      houseKeeping: houseKeeping ?? this.houseKeeping,
      kidsClub: kidsClub ?? this.kidsClub,
      laundry: laundry ?? this.laundry,
      lounge: lounge ?? this.lounge,
      parking: parking ?? this.parking,
      pool: pool ?? this.pool,
      roomService: roomService ?? this.roomService,
      security: security ?? this.security,
      souvenirShop: souvenirShop ?? this.souvenirShop,
      spa: spa ?? this.spa,
      transfers: transfers ?? this.transfers,
      wifi: wifi ?? this.wifi,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airport': airport,
      'atms': atms,
      'beaches': beaches,
      'bikiniBeaches': bikiniBeaches,
      'coffeeShops': coffeeShops,
      'drivingSchool': drivingSchool,
      'excursionClubs': excursionClubs,
      'ferryService': ferryService,
      'gym': gym,
      'harbour': harbour,
      'hospitals': hospitals,
      'hotels': hotels,
      'playgrounds': playgrounds,
      'restaurants': restaurants,
      'retailShops': retailShops,
      'souvenirShops': souvenirShops,
      'surfingPoint': surfingPoint,
      'swimmingAreas': swimmingAreas,
      'ac': ac,
      'airportShuttle': airportShuttle,
      'amenities': amenities,
      'bathTub': bathTub,
      'bikeRental': bikeRental,
      'carRentals': carRentals,
      'covid19Safety': covid19Safety,
      'creditAndDebitCard': creditAndDebitCard,
      'eventsAndEntertainment': eventsAndEntertainment,
      'guestRelations': guestRelations,
      'hotWater': hotWater,
      'houseKeeping': houseKeeping,
      'kidsClub': kidsClub,
      'laundry': laundry,
      'lounge': lounge,
      'parking': parking,
      'pool': pool,
      'roomService': roomService,
      'security': security,
      'souvenirShop': souvenirShop,
      'spa': spa,
      'transfers': transfers,
      'wifi': wifi,
    };
  }

  factory Facilities.fromMap(Map<String, dynamic> map) {
    return Facilities(
      airport: map['airport'] ?? false,
      atms: map['atms'] ?? false,
      beaches: map['beaches'] ?? false,
      bikiniBeaches: map['bikiniBeaches'] ?? false,
      coffeeShops: map['coffeeShops'] ?? false,
      drivingSchool: map['drivingSchool'] ?? false,
      excursionClubs: map['excursionClubs'] ?? false,
      ferryService: map['ferryService'] ?? false,
      gym: map['gym'] ?? false,
      harbour: map['harbour'] ?? false,
      hospitals: map['hospitals'] ?? false,
      hotels: map['hotels'] ?? false,
      playgrounds: map['playgrounds'] ?? false,
      restaurants: map['restaurants'] ?? false,
      retailShops: map['retailShops'] ?? false,
      souvenirShops: map['souvenirShops'] ?? false,
      surfingPoint: map['surfingPoint'] ?? false,
      swimmingAreas: map['swimmingAreas'] ?? false,
      ac: map['ac'] ?? false,
      airportShuttle: map['airportShuttle'] ?? false,
      amenities: map['amenities'] ?? false,
      bathTub: map['bathTub'] ?? false,
      bikeRental: map['bikeRental'] ?? false,
      carRentals: map['carRentals'] ?? false,
      covid19Safety: map['covid19Safety'] ?? false,
      creditAndDebitCard: map['creditAndDebitCard'] ?? false,
      eventsAndEntertainment: map['eventsAndEntertainment'] ?? false,
      guestRelations: map['guestRelations'] ?? false,
      hotWater: map['hotWater'] ?? false,
      houseKeeping: map['houseKeeping'] ?? false,
      kidsClub: map['kidsClub'] ?? false,
      laundry: map['laundry'] ?? false,
      lounge: map['lounge'] ?? false,
      parking: map['parking'] ?? false,
      pool: map['pool'] ?? false,
      roomService: map['roomService'] ?? false,
      security: map['security'] ?? false,
      souvenirShop: map['souvenirShop'] ?? false,
      spa: map['spa'] ?? false,
      transfers: map['transfers'] ?? false,
      wifi: map['wifi'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Facilities.fromJson(String source) =>
      Facilities.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Facilities(airport: $airport, atms: $atms, beaches: $beaches, bikiniBeaches: $bikiniBeaches, coffeeShops: $coffeeShops, drivingSchool: $drivingSchool, excursionClubs: $excursionClubs, ferryService: $ferryService, gym: $gym, harbour: $harbour, hospitals: $hospitals, hotels: $hotels, playgrounds: $playgrounds, restaurants: $restaurants, retailShops: $retailShops, souvenirShops: $souvenirShops, surfingPoint: $surfingPoint, swimmingAreas: $swimmingAreas, ac: $ac, airportShuttle: $airportShuttle, amenities: $amenities, bathTub: $bathTub, bikeRental: $bikeRental, carRentals: $carRentals, covid19Safety: $covid19Safety, creditAndDebitCard: $creditAndDebitCard, eventsAndEntertainment: $eventsAndEntertainment, guestRelations: $guestRelations, hotWater: $hotWater, houseKeeping: $houseKeeping, kidsClub: $kidsClub, laundry: $laundry, lounge: $lounge, parking: $parking, pool: $pool, roomService: $roomService, security: $security, souvenirShop: $souvenirShop, spa: $spa, transfers: $transfers, wifi: $wifi)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Facilities &&
        other.airport == airport &&
        other.atms == atms &&
        other.beaches == beaches &&
        other.bikiniBeaches == bikiniBeaches &&
        other.coffeeShops == coffeeShops &&
        other.drivingSchool == drivingSchool &&
        other.excursionClubs == excursionClubs &&
        other.ferryService == ferryService &&
        other.gym == gym &&
        other.harbour == harbour &&
        other.hospitals == hospitals &&
        other.hotels == hotels &&
        other.playgrounds == playgrounds &&
        other.restaurants == restaurants &&
        other.retailShops == retailShops &&
        other.souvenirShops == souvenirShops &&
        other.surfingPoint == surfingPoint &&
        other.swimmingAreas == swimmingAreas &&
        other.ac == ac &&
        other.airportShuttle == airportShuttle &&
        other.amenities == amenities &&
        other.bathTub == bathTub &&
        other.bikeRental == bikeRental &&
        other.carRentals == carRentals &&
        other.covid19Safety == covid19Safety &&
        other.creditAndDebitCard == creditAndDebitCard &&
        other.eventsAndEntertainment == eventsAndEntertainment &&
        other.guestRelations == guestRelations &&
        other.hotWater == hotWater &&
        other.houseKeeping == houseKeeping &&
        other.kidsClub == kidsClub &&
        other.laundry == laundry &&
        other.lounge == lounge &&
        other.parking == parking &&
        other.pool == pool &&
        other.roomService == roomService &&
        other.security == security &&
        other.souvenirShop == souvenirShop &&
        other.spa == spa &&
        other.transfers == transfers &&
        other.wifi == wifi;
  }

  @override
  int get hashCode {
    return airport.hashCode ^
        atms.hashCode ^
        beaches.hashCode ^
        bikiniBeaches.hashCode ^
        coffeeShops.hashCode ^
        drivingSchool.hashCode ^
        excursionClubs.hashCode ^
        ferryService.hashCode ^
        gym.hashCode ^
        harbour.hashCode ^
        hospitals.hashCode ^
        hotels.hashCode ^
        playgrounds.hashCode ^
        restaurants.hashCode ^
        retailShops.hashCode ^
        souvenirShops.hashCode ^
        surfingPoint.hashCode ^
        swimmingAreas.hashCode ^
        ac.hashCode ^
        airportShuttle.hashCode ^
        amenities.hashCode ^
        bathTub.hashCode ^
        bikeRental.hashCode ^
        carRentals.hashCode ^
        covid19Safety.hashCode ^
        creditAndDebitCard.hashCode ^
        eventsAndEntertainment.hashCode ^
        guestRelations.hashCode ^
        hotWater.hashCode ^
        houseKeeping.hashCode ^
        kidsClub.hashCode ^
        laundry.hashCode ^
        lounge.hashCode ^
        parking.hashCode ^
        pool.hashCode ^
        roomService.hashCode ^
        security.hashCode ^
        souvenirShop.hashCode ^
        spa.hashCode ^
        transfers.hashCode ^
        wifi.hashCode;
  }
}
