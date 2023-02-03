import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/models/facilities.dart';
import 'package:hop_maldives/painters/islands/airport.dart';
import 'package:hop_maldives/painters/islands/atms.dart';
import 'package:hop_maldives/painters/islands/beaches.dart';
import 'package:hop_maldives/painters/islands/bikini_beaches.dart';
import 'package:hop_maldives/painters/islands/coffee_shops.dart';
import 'package:hop_maldives/painters/islands/ferry_service.dart';
import 'package:hop_maldives/painters/islands/harbour.dart';
import 'package:hop_maldives/painters/islands/hospitals.dart';
import 'package:hop_maldives/painters/islands/hotels.dart';
import 'package:hop_maldives/painters/islands/playgrounds.dart';
import 'package:hop_maldives/painters/islands/retail_shops.dart';
import 'package:hop_maldives/painters/islands/souvenir_shops.dart';
import 'package:hop_maldives/painters/islands/surfing_point.dart';
import 'package:hop_maldives/painters/islands/swimming_area.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/ac.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/airport_shuttle.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/amenities.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/bath_tub.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/bike_rental.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/car_rentals.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/covid19_safety.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/credit_and_debit_card.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/driving_school.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/events_and_entertainments.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/excursion_clubs.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/guest_relations.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/gym.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/hot_water.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/house_keeping.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/kids_club.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/laundry.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/lounge.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/parking.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/pool.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/restaurant.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/room_services.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/security.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/spa.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/transfers.dart';
import 'package:hop_maldives/painters/resorts_and_hotels/wifi.dart';

class FacilitiesChips extends StatelessWidget {
  final Facilities facilities;
  const FacilitiesChips({
    Key? key,
    required this.facilities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Chip> chips = [];

    Widget title(CustomPainter paint, String label) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomPaint(
              painter: paint,
              size: Size(
                AppDimensions.normalize(15),
                AppDimensions.normalize(15),
              ),
            ),
            Space.xf(0.25),
            Text(
              label,
              style: AppText.l1b!.copyWith(
                color: Colors.black,
              ),
            )
          ],
        );

    if (facilities.airport) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            AirportPainter(),
            'Airport',
          ),
        ),
      );
    }
    if (facilities.atms) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ATMSPainter(),
            'ATMS',
          ),
        ),
      );
    }

    if (facilities.beaches) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BeachesPainter(),
            'Beaches',
          ),
        ),
      );
    }

    if (facilities.bikiniBeaches) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BikiniBeachesPainter(),
            'Bikini Beaches',
          ),
        ),
      );
    }

    if (facilities.coffeeShops) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CoffeeShopsPainter(),
            'Coffee Shops',
          ),
        ),
      );
    }

    if (facilities.ferryService) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            DrivingSchoolPainter(),
            'Driving School',
          ),
        ),
      );
    }

    if (facilities.excursionClubs) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ExcursionClubsPainter(),
            'Excursion Clubs',
          ),
        ),
      );
    }

    if (facilities.guestRelations) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            FerryServicePainter(),
            'Ferry Service',
          ),
        ),
      );
    }

    if (facilities.gym) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            GymPainter(),
            'Gym',
          ),
        ),
      );
    }

    if (facilities.hotWater) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HarbourPainter(),
            'Harbour',
          ),
        ),
      );
    }

    if (facilities.houseKeeping) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HospitalsPainter(),
            'Hospitals',
          ),
        ),
      );
    }

    if (facilities.kidsClub) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HotelsPainter(),
            'Hotels',
          ),
        ),
      );
    }
    if (facilities.playgrounds) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            PlaygroundsPainter(),
            'Playgrounds',
          ),
        ),
      );
    }

    if (facilities.restaurants) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            RestaurantPainter(),
            'Restaurant',
          ),
        ),
      );
    }

    if (facilities.retailShops) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            RetailShopsPainter(),
            'Retail Shops',
          ),
        ),
      );
    }

    if (facilities.souvenirShop) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SouvenirShopsPainter(),
            'Souvenir Shops',
          ),
        ),
      );
    }

    if (facilities.surfingPoint) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SurfingPointPainter(),
            'Surfing',
          ),
        ),
      );
    }

    if (facilities.swimmingAreas) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SwimmingAreaPainter(),
            'Swimming Area',
          ),
        ),
      );
    }

    if (facilities.ac) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ACPainter(),
            'AC',
          ),
        ),
      );
    }

    if (facilities.airportShuttle) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            AirportShuttlePainter(),
            'Airport Shuttle',
          ),
        ),
      );
    }

    if (facilities.amenities) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            AmenitiesPainter(),
            'Amenities',
          ),
        ),
      );
    }

    if (facilities.bathTub) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BathTubPainter(),
            'Bath Tub',
          ),
        ),
      );
    }

    if (facilities.bikeRental) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BikeRentalPainter(),
            'Bike Rental',
          ),
        ),
      );
    }
    if (facilities.carRentals) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CarRentalsPainter(),
            'Car Rentals',
          ),
        ),
      );
    }

    if (facilities.covid19Safety) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            Covid19SafetyPainter(),
            'Covid-19 Safety',
          ),
        ),
      );
    }

    if (facilities.creditAndDebitCard) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CreditAndDebitCardPainter(),
            'Credit And Debit Card',
          ),
        ),
      );
    }

    if (facilities.drivingSchool) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            DrivingSchoolPainter(),
            'Driving School',
          ),
        ),
      );
    }

    if (facilities.eventsAndEntertainment) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            EventsAndEntertainmentPainter(),
            'Events And Entertainment',
          ),
        ),
      );
    }

    if (facilities.guestRelations) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            GuestRelationsPainter(),
            'Guest Relations',
          ),
        ),
      );
    }

    if (facilities.hotWater) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HotWaterPainter(),
            'Hot Water',
          ),
        ),
      );
    }

    if (facilities.houseKeeping) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HouseKeepingPainter(),
            'House Keeping',
          ),
        ),
      );
    }

    if (facilities.kidsClub) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            KidsClubPainter(),
            'Kids Club',
          ),
        ),
      );
    }

    if (facilities.laundry) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            LaundryPainter(),
            'Laundry',
          ),
        ),
      );
    }

    if (facilities.lounge) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            LoungePainter(),
            'Lounge',
          ),
        ),
      );
    }

    if (facilities.parking) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ParkingPainter(),
            'Parking',
          ),
        ),
      );
    }

    if (facilities.pool) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            PoolPainter(),
            'Pool',
          ),
        ),
      );
    }

    if (facilities.roomService) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            RoomServicesPainter(),
            'Room Services',
          ),
        ),
      );
    }

    if (facilities.security) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SecurityPainter(),
            'Security',
          ),
        ),
      );
    }

    if (facilities.spa) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SpaPainter(),
            'Spa',
          ),
        ),
      );
    }

    if (facilities.transfers) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            TransfersPainter(),
            'Transfers',
          ),
        ),
      );
    }

    if (facilities.wifi) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WifiPainter(),
            'Wifi',
          ),
        ),
      );
    }

    return Wrap(
      runSpacing: AppDimensions.normalize(5),
      spacing: AppDimensions.normalize(5),
      children: chips.map((e) => e).toList(),
    );
  }
}
