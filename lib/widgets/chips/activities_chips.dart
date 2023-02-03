import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/models/activities.dart';
import 'package:hop_maldives/painters/dive/barracudas.dart';
import 'package:hop_maldives/painters/dive/black_tip_reef_sharks.dart';
import 'package:hop_maldives/painters/dive/clown_fish.dart';
import 'package:hop_maldives/painters/dive/coral_reefs.dart';
import 'package:hop_maldives/painters/dive/dolphins.dart';
import 'package:hop_maldives/painters/dive/groupers.dart';
import 'package:hop_maldives/painters/dive/hammer_headed_sharks.dart';
import 'package:hop_maldives/painters/dive/hard_corals.dart';
import 'package:hop_maldives/painters/dive/jelly_fish.dart';
import 'package:hop_maldives/painters/dive/lion_fish.dart';
import 'package:hop_maldives/painters/dive/lobsters.dart';
import 'package:hop_maldives/painters/dive/manta_rays.dart';
import 'package:hop_maldives/painters/dive/mola_mola.dart';
import 'package:hop_maldives/painters/dive/moray_eels.dart';
import 'package:hop_maldives/painters/dive/oceanic_hammer_headed_sharks.dart';
import 'package:hop_maldives/painters/dive/oceanic_manta_rays.dart';
import 'package:hop_maldives/painters/dive/oceaninc_fishes.dart';
import 'package:hop_maldives/painters/dive/octopuses.dart';
import 'package:hop_maldives/painters/dive/rays.dart';
import 'package:hop_maldives/painters/dive/reef_fishes.dart';
import 'package:hop_maldives/painters/dive/reef_sharks.dart';
import 'package:hop_maldives/painters/dive/sand_tiger_sharks.dart';
import 'package:hop_maldives/painters/dive/school_of_reef_sharks.dart';
import 'package:hop_maldives/painters/dive/ship_wrecks.dart';
import 'package:hop_maldives/painters/dive/soft_corals.dart';
import 'package:hop_maldives/painters/dive/star_fish.dart';
import 'package:hop_maldives/painters/dive/thresher_sharks.dart';
import 'package:hop_maldives/painters/dive/tiger_sharks.dart';
import 'package:hop_maldives/painters/dive/turtles.dart';
import 'package:hop_maldives/painters/dive/whale_shark.dart';
import 'package:hop_maldives/painters/dive/white_tip_reef_sharks.dart';
import 'package:hop_maldives/painters/excursion/banana_boat_ride.dart';
import 'package:hop_maldives/painters/excursion/big_game_fishing.dart';
import 'package:hop_maldives/painters/excursion/canoeing.dart';
import 'package:hop_maldives/painters/excursion/catamaran_sailing.dart';
import 'package:hop_maldives/painters/excursion/fly_boad.dart';
import 'package:hop_maldives/painters/excursion/fun_tube.dart';
import 'package:hop_maldives/painters/excursion/glass_bottom_boat.dart';
import 'package:hop_maldives/painters/excursion/jet_blade.dart';
import 'package:hop_maldives/painters/excursion/jet_ski.dart';
import 'package:hop_maldives/painters/excursion/jet_ski_tours.dart';
import 'package:hop_maldives/painters/excursion/kite_surfing.dart';
import 'package:hop_maldives/painters/excursion/knee_boarding.dart';
import 'package:hop_maldives/painters/excursion/parasailing.dart';
import 'package:hop_maldives/painters/excursion/schiller_bike.dart';
import 'package:hop_maldives/painters/excursion/sea_bob.dart';
import 'package:hop_maldives/painters/excursion/semi_submarine.dart';
import 'package:hop_maldives/painters/excursion/snorkling.dart';
import 'package:hop_maldives/painters/excursion/speed_boat.dart';
import 'package:hop_maldives/painters/excursion/speedster.dart';
import 'package:hop_maldives/painters/excursion/stand_up_paddle_boat.dart';
import 'package:hop_maldives/painters/excursion/sunset_cruise.dart';
import 'package:hop_maldives/painters/excursion/sup_ski.dart';
import 'package:hop_maldives/painters/excursion/surfing.dart';
import 'package:hop_maldives/painters/excursion/swimming.dart';
import 'package:hop_maldives/painters/excursion/trimaran_sailing.dart';
import 'package:hop_maldives/painters/excursion/wake_boarding.dart';
import 'package:hop_maldives/painters/excursion/water_ski.dart';
import 'package:hop_maldives/painters/excursion/wind_surfing.dart';

class ActivitiesChips extends StatelessWidget {
  final Activities act;
  const ActivitiesChips({
    Key? key,
    required this.act,
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

    if (act.bigGameFishing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BigGameFishingPainter(),
            'Big game fishing',
          ),
        ),
      );
    }

    if (act.canoeing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CanoeingPainter(),
            'Canoeing',
          ),
        ),
      );
    }

    if (act.catamaranSailing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CatamaranSailingPainter(),
            'Catamaran sailing',
          ),
        ),
      );
    }

    if (act.flyBoard) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            FlyBoardPainter(),
            'Fly board',
          ),
        ),
      );
    }

    if (act.funTube) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            FunTubePainter(),
            'Fun tube',
          ),
        ),
      );
    }

    if (act.glassBottomBoat) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            GlassBottomBoatPainter(),
            'Glass bottom boat',
          ),
        ),
      );
    }

    if (act.jetBlade) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            JetBladePainter(),
            'Jet blade',
          ),
        ),
      );
    }

    if (act.jetSkiTours) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            JetSkiToursPainter(),
            'Jet ski tours',
          ),
        ),
      );
    }

    if (act.kiteSurfing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            KiteSurfingPainter(),
            'Kite surfing',
          ),
        ),
      );
    }

    if (act.kneeBoarding) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            KneeBoardingPainter(),
            'Knee boarding',
          ),
        ),
      );
    }

    if (act.parasailing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ParaSailingPainter(),
            'Parasailing',
          ),
        ),
      );
    }

    if (act.schillerBike) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SchillerBikePainter(),
            'Schiller Bike',
          ),
        ),
      );
    }

    if (act.seaBob) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SeaBobPainter(),
            'Sea Bob',
          ),
        ),
      );
    }

    if (act.semiSubmarine) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SemiSubmarinePainter(),
            'Semi Submarine',
          ),
        ),
      );
    }

    if (act.snorkling) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SnorklingPainter(),
            'Snorkling',
          ),
        ),
      );
    }

    if (act.speedBoat) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SpeedBoatPainter(),
            'Speed Boat',
          ),
        ),
      );
    }

    if (act.speedster) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SpeedsterPainter(),
            'Speedster',
          ),
        ),
      );
    }

    if (act.standUpPaddleBoat) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            StandUpPaddleBoatPainter(),
            'Stand Up Paddle Boat',
          ),
        ),
      );
    }

    if (act.sunsetCruise) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SunsetCruisePainter(),
            'Sunset Cruise',
          ),
        ),
      );
    }

    if (act.supSki) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SUPSkiPainter(),
            'SUP Ski',
          ),
        ),
      );
    }

    if (act.surfing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SurfingPainter(),
            'Surfing',
          ),
        ),
      );
    }

    if (act.swimming) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SwimmingPainter(),
            'Swimming',
          ),
        ),
      );
    }

    if (act.trimaranSailing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            TrimaranSailingPainter(),
            'Trimaran Sailing',
          ),
        ),
      );
    }

    if (act.wakeBoarding) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WakeBoardingPainter(),
            'Wake Boarding',
          ),
        ),
      );
    }

    if (act.waterSki) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WaterSkiPainter(),
            'Water Ski',
          ),
        ),
      );
    }

    if (act.windSurfing) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WindSurfingPainter(),
            'Wind Surfing',
          ),
        ),
      );
    }

    if (act.bananaBoatRide) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BananaBoatRidePainter(),
            'Banana Boat Ride',
          ),
        ),
      );
    }

    if (act.jetSki) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            JetSkiPainter(),
            'Jet Ski',
          ),
        ),
      );
    }

    if (act.barracudas) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BarracudasPainter(),
            'Barracudas',
          ),
        ),
      );
    }

    if (act.blackTipReefSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            BlackTipReefSharkPainter(),
            'Black Tip Reef Shark',
          ),
        ),
      );
    }

    if (act.clownFish) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ClownFishPainter(),
            'Clown Fish',
          ),
        ),
      );
    }

    if (act.coralReefs) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            CoralReefsPainter(),
            'Coral Reefs',
          ),
        ),
      );
    }

    if (act.doplhins) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            DolphinsPainter(),
            'Dolphins',
          ),
        ),
      );
    }

    if (act.groupers) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            GroupersPainter(),
            'Groupers',
          ),
        ),
      );
    }

    if (act.hammerHeadedSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HammerHeadedSharksPainter(),
            'Hammer Headed Shark',
          ),
        ),
      );
    }

    if (act.hardCorals) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            HardCoralsPainter(),
            'Hard Corals',
          ),
        ),
      );
    }

    if (act.jellyFish) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            JellyFishPainter(),
            'Jelly Fish',
          ),
        ),
      );
    }

    if (act.lionFish) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            LionFishPainter(),
            'Lion Fish',
          ),
        ),
      );
    }

    if (act.lobsters) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            LobstersPainter(),
            'Lobsters',
          ),
        ),
      );
    }

    if (act.mantaRays) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            MantaRaysPainter(),
            'Manta Rays',
          ),
        ),
      );
    }

    if (act.molaMola) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            MolaMolaPainter(),
            'Mola Mola',
          ),
        ),
      );
    }

    if (act.morayEels) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            MorayEelsPainter(),
            'Moray Eels',
          ),
        ),
      );
    }

    if (act.oceanicHammerHeadedSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            OceanicHammerHeadedSharksPainter(),
            'Oceanic Hammer Headed Shark',
          ),
        ),
      );
    }

    if (act.oceanicMantaRays) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            OceanicMantaRaysPainter(),
            'Oceanic Manta Rays',
          ),
        ),
      );
    }

    if (act.oceanicFishes) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            OceanicFishesPainter(),
            'Oceanic Fishes',
          ),
        ),
      );
    }

    if (act.octopuses) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            OctopusesPainter(),
            'Octopuses',
          ),
        ),
      );
    }

    if (act.rays) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            RaysPainter(),
            'Rays',
          ),
        ),
      );
    }

    if (act.reefFishes) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ReefFishesPainter(),
            'Reef Fishes',
          ),
        ),
      );
    }

    if (act.reefSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ReefSharksPainter(),
            'Reef Sharks',
          ),
        ),
      );
    }

    if (act.sandTigerSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SandTigerSharksPainter(),
            'Sand Tiger Sharks',
          ),
        ),
      );
    }

    if (act.schoolOfReefSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SchoolOfReefSharksPainter(),
            'School of Reef Sharks',
          ),
        ),
      );
    }

    if (act.shipWrecks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ShipWrecksPainter(),
            'Ship Wrecks',
          ),
        ),
      );
    }

    if (act.softCorals) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            SoftCoralsPainter(),
            'Soft Corals',
          ),
        ),
      );
    }

    if (act.starFish) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            StarFishPainter(),
            'Star Fish',
          ),
        ),
      );
    }

    if (act.thresherSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            ThresherSharksPainter(),
            'Thresher Sharks',
          ),
        ),
      );
    }

    if (act.tigerSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            TigerSharksPainter(),
            'Tiger Sharks',
          ),
        ),
      );
    }

    if (act.turtles) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            TurtlesPainter(),
            'Turtles',
          ),
        ),
      );
    }

    if (act.whaleShark) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WhaleSharkPainter(),
            'Whale Sharks',
          ),
        ),
      );
    }

    if (act.whiteTipReefSharks) {
      chips.add(
        Chip(
          backgroundColor: Colors.grey[200],
          label: title(
            WhiteTipReefSharksPainter(),
            'White Tip Reef Sharks',
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
