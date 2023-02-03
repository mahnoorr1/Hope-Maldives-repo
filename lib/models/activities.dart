// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Activities {
  final bool bigGameFishing;
  final bool canoeing;
  final bool catamaranSailing;
  final bool flyBoard;
  final bool funTube;
  final bool glassBottomBoat;
  final bool jetBlade;
  final bool jetSkiTours;
  final bool kiteSurfing;
  final bool kneeBoarding;
  final bool parasailing;
  final bool schillerBike;
  final bool seaBob;
  final bool semiSubmarine;
  final bool snorkling;
  final bool speedBoat;
  final bool speedster;
  final bool standUpPaddleBoat;
  final bool sunsetCruise;
  final bool supSki;
  final bool surfing;
  final bool swimming;
  final bool trimaranSailing;
  final bool wakeBoarding;
  final bool waterSki;
  final bool windSurfing;
  final bool bananaBoatRide;
  final bool jetSki;
  final bool barracudas;
  final bool blackTipReefSharks;
  final bool clownFish;
  final bool coralReefs;
  final bool doplhins;
  final bool groupers;
  final bool hammerHeadedSharks;
  final bool hardCorals;
  final bool jellyFish;
  final bool lionFish;
  final bool lobsters;
  final bool mantaRays;
  final bool molaMola;
  final bool morayEels;
  final bool oceanicHammerHeadedSharks;
  final bool oceanicMantaRays;
  final bool oceanicFishes;
  final bool octopuses;
  final bool rays;
  final bool reefFishes;
  final bool reefSharks;
  final bool sandTigerSharks;
  final bool schoolOfReefSharks;
  final bool shipWrecks;
  final bool softCorals;
  final bool starFish;
  final bool thresherSharks;
  final bool tigerSharks;
  final bool turtles;
  final bool whaleShark;
  final bool whiteTipReefSharks;

  Activities({
    required this.bigGameFishing,
    required this.canoeing,
    required this.catamaranSailing,
    required this.flyBoard,
    required this.funTube,
    required this.glassBottomBoat,
    required this.jetBlade,
    required this.jetSkiTours,
    required this.kiteSurfing,
    required this.kneeBoarding,
    required this.parasailing,
    required this.schillerBike,
    required this.seaBob,
    required this.semiSubmarine,
    required this.snorkling,
    required this.speedBoat,
    required this.speedster,
    required this.standUpPaddleBoat,
    required this.sunsetCruise,
    required this.supSki,
    required this.surfing,
    required this.swimming,
    required this.trimaranSailing,
    required this.wakeBoarding,
    required this.waterSki,
    required this.windSurfing,
    required this.bananaBoatRide,
    required this.jetSki,
    required this.barracudas,
    required this.blackTipReefSharks,
    required this.clownFish,
    required this.coralReefs,
    required this.doplhins,
    required this.groupers,
    required this.hammerHeadedSharks,
    required this.hardCorals,
    required this.jellyFish,
    required this.lionFish,
    required this.lobsters,
    required this.mantaRays,
    required this.molaMola,
    required this.morayEels,
    required this.oceanicHammerHeadedSharks,
    required this.oceanicMantaRays,
    required this.oceanicFishes,
    required this.octopuses,
    required this.rays,
    required this.reefFishes,
    required this.reefSharks,
    required this.sandTigerSharks,
    required this.schoolOfReefSharks,
    required this.shipWrecks,
    required this.softCorals,
    required this.starFish,
    required this.thresherSharks,
    required this.tigerSharks,
    required this.turtles,
    required this.whaleShark,
    required this.whiteTipReefSharks,
  });

  Activities copyWith({
    bool? bigGameFishing,
    bool? canoeing,
    bool? catamaranSailing,
    bool? flyBoard,
    bool? funTube,
    bool? glassBottomBoat,
    bool? jetBlade,
    bool? jetSkiTours,
    bool? kiteSurfing,
    bool? kneeBoarding,
    bool? parasailing,
    bool? schillerBike,
    bool? seaBob,
    bool? semiSubmarine,
    bool? snorkling,
    bool? speedBoat,
    bool? speedster,
    bool? standUpPaddleBoat,
    bool? sunsetCruise,
    bool? supSki,
    bool? surfing,
    bool? swimming,
    bool? trimaranSailing,
    bool? wakeBoarding,
    bool? waterSki,
    bool? windSurfing,
    bool? bananaBoatRide,
    bool? jetSki,
    bool? barracudas,
    bool? blackTipReefSharks,
    bool? clownFish,
    bool? coralReefs,
    bool? doplhins,
    bool? groupers,
    bool? hammerHeadedSharks,
    bool? hardCorals,
    bool? jellyFish,
    bool? lionFish,
    bool? lobsters,
    bool? mantaRays,
    bool? molaMola,
    bool? morayEels,
    bool? oceanicHammerHeadedSharks,
    bool? oceanicMantaRays,
    bool? oceanicFishes,
    bool? octopuses,
    bool? rays,
    bool? reefFishes,
    bool? reefSharks,
    bool? sandTigerSharks,
    bool? schoolOfReefSharks,
    bool? shipWrecks,
    bool? softCorals,
    bool? starFish,
    bool? thresherSharks,
    bool? tigerSharks,
    bool? turtles,
    bool? whaleShark,
    bool? whiteTipReefSharks,
  }) {
    return Activities(
      bigGameFishing: bigGameFishing ?? this.bigGameFishing,
      canoeing: canoeing ?? this.canoeing,
      catamaranSailing: catamaranSailing ?? this.catamaranSailing,
      flyBoard: flyBoard ?? this.flyBoard,
      funTube: funTube ?? this.funTube,
      glassBottomBoat: glassBottomBoat ?? this.glassBottomBoat,
      jetBlade: jetBlade ?? this.jetBlade,
      jetSkiTours: jetSkiTours ?? this.jetSkiTours,
      kiteSurfing: kiteSurfing ?? this.kiteSurfing,
      kneeBoarding: kneeBoarding ?? this.kneeBoarding,
      parasailing: parasailing ?? this.parasailing,
      schillerBike: schillerBike ?? this.schillerBike,
      seaBob: seaBob ?? this.seaBob,
      semiSubmarine: semiSubmarine ?? this.semiSubmarine,
      snorkling: snorkling ?? this.snorkling,
      speedBoat: speedBoat ?? this.speedBoat,
      speedster: speedster ?? this.speedster,
      standUpPaddleBoat: standUpPaddleBoat ?? this.standUpPaddleBoat,
      sunsetCruise: sunsetCruise ?? this.sunsetCruise,
      supSki: supSki ?? this.supSki,
      surfing: surfing ?? this.surfing,
      swimming: swimming ?? this.swimming,
      trimaranSailing: trimaranSailing ?? this.trimaranSailing,
      wakeBoarding: wakeBoarding ?? this.wakeBoarding,
      waterSki: waterSki ?? this.waterSki,
      windSurfing: windSurfing ?? this.windSurfing,
      bananaBoatRide: bananaBoatRide ?? this.bananaBoatRide,
      jetSki: jetSki ?? this.jetSki,
      barracudas: barracudas ?? this.barracudas,
      blackTipReefSharks: blackTipReefSharks ?? this.blackTipReefSharks,
      clownFish: clownFish ?? this.clownFish,
      coralReefs: coralReefs ?? this.coralReefs,
      doplhins: doplhins ?? this.doplhins,
      groupers: groupers ?? this.groupers,
      hammerHeadedSharks: hammerHeadedSharks ?? this.hammerHeadedSharks,
      hardCorals: hardCorals ?? this.hardCorals,
      jellyFish: jellyFish ?? this.jellyFish,
      lionFish: lionFish ?? this.lionFish,
      lobsters: lobsters ?? this.lobsters,
      mantaRays: mantaRays ?? this.mantaRays,
      molaMola: molaMola ?? this.molaMola,
      morayEels: morayEels ?? this.morayEels,
      oceanicHammerHeadedSharks:
          oceanicHammerHeadedSharks ?? this.oceanicHammerHeadedSharks,
      oceanicMantaRays: oceanicMantaRays ?? this.oceanicMantaRays,
      oceanicFishes: oceanicFishes ?? this.oceanicFishes,
      octopuses: octopuses ?? this.octopuses,
      rays: rays ?? this.rays,
      reefFishes: reefFishes ?? this.reefFishes,
      reefSharks: reefSharks ?? this.reefSharks,
      sandTigerSharks: sandTigerSharks ?? this.sandTigerSharks,
      schoolOfReefSharks: schoolOfReefSharks ?? this.schoolOfReefSharks,
      shipWrecks: shipWrecks ?? this.shipWrecks,
      softCorals: softCorals ?? this.softCorals,
      starFish: starFish ?? this.starFish,
      thresherSharks: thresherSharks ?? this.thresherSharks,
      tigerSharks: tigerSharks ?? this.tigerSharks,
      turtles: turtles ?? this.turtles,
      whaleShark: whaleShark ?? this.whaleShark,
      whiteTipReefSharks: whiteTipReefSharks ?? this.whiteTipReefSharks,
    );
  }

  Map<String, bool> toMap() {
    return <String, bool>{
      'bigGameFishing': bigGameFishing,
      'canoeing': canoeing,
      'catamaranSailing': catamaranSailing,
      'flyBoard': flyBoard,
      'funTube': funTube,
      'glassBottomBoat': glassBottomBoat,
      'jetBlade': jetBlade,
      'jetSkiTours': jetSkiTours,
      'kiteSurfing': kiteSurfing,
      'kneeBoarding': kneeBoarding,
      'parasailing': parasailing,
      'schillerBike': schillerBike,
      'seaBob': seaBob,
      'semiSubmarine': semiSubmarine,
      'snorkling': snorkling,
      'speedBoat': speedBoat,
      'speedster': speedster,
      'standUpPaddleBoat': standUpPaddleBoat,
      'sunsetCruise': sunsetCruise,
      'supSki': supSki,
      'surfing': surfing,
      'swimming': swimming,
      'trimaranSailing': trimaranSailing,
      'wakeBoarding': wakeBoarding,
      'waterSki': waterSki,
      'windSurfing': windSurfing,
      'bananaBoatRide': bananaBoatRide,
      'jetSki': jetSki,
      'barracudas': barracudas,
      'blackTipReefSharks': blackTipReefSharks,
      'clownFish': clownFish,
      'coralReefs': coralReefs,
      'doplhins': doplhins,
      'groupers': groupers,
      'hammerHeadedSharks': hammerHeadedSharks,
      'hardCorals': hardCorals,
      'jellyFish': jellyFish,
      'lionFish': lionFish,
      'lobsters': lobsters,
      'mantaRays': mantaRays,
      'molaMola': molaMola,
      'morayEels': morayEels,
      'oceanicHammerHeadedSharks': oceanicHammerHeadedSharks,
      'oceanicMantaRays': oceanicMantaRays,
      'oceanicFishes': oceanicFishes,
      'octopuses': octopuses,
      'rays': rays,
      'reefFishes': reefFishes,
      'reefSharks': reefSharks,
      'sandTigerSharks': sandTigerSharks,
      'schoolOfReefSharks': schoolOfReefSharks,
      'shipWrecks': shipWrecks,
      'softCorals': softCorals,
      'starFish': starFish,
      'thresherSharks': thresherSharks,
      'tigerSharks': tigerSharks,
      'turtles': turtles,
      'whaleShark': whaleShark,
      'whiteTipReefSharks': whiteTipReefSharks,
    };
  }

  factory Activities.fromMap(Map<String, dynamic> map) {
    return Activities(
      bigGameFishing: map['bigGameFishing'] ?? false,
      canoeing: map['canoeing'] ?? false,
      catamaranSailing: map['catamaranSailing'] ?? false,
      flyBoard: map['flyBoard'] ?? false,
      funTube: map['funTube'] ?? false,
      glassBottomBoat: map['glassBottomBoat'] ?? false,
      jetBlade: map['jetBlade'] ?? false,
      jetSkiTours: map['jetSkiTours'] ?? false,
      kiteSurfing: map['kiteSurfing'] ?? false,
      kneeBoarding: map['kneeBoarding'] ?? false,
      parasailing: map['parasailing'] ?? false,
      schillerBike: map['schillerBike'] ?? false,
      seaBob: map['seaBob'] ?? false,
      semiSubmarine: map['semiSubmarine'] ?? false,
      snorkling: map['snorkling'] ?? false,
      speedBoat: map['speedBoat'] ?? false,
      speedster: map['speedster'] ?? false,
      standUpPaddleBoat: map['standUpPaddleBoat'] ?? false,
      sunsetCruise: map['sunsetCruise'] ?? false,
      supSki: map['supSki'] ?? false,
      surfing: map['surfing'] ?? false,
      swimming: map['swimming'] ?? false,
      trimaranSailing: map['trimaranSailing'] ?? false,
      wakeBoarding: map['wakeBoarding'] ?? false,
      waterSki: map['waterSki'] ?? false,
      windSurfing: map['windSurfing'] ?? false,
      bananaBoatRide: map['bananaBoatRide'] ?? false,
      jetSki: map['jetSki'] ?? false,
      barracudas: map['barracudas'] ?? false,
      blackTipReefSharks: map['blackTipReefSharks'] ?? false,
      clownFish: map['clownFish'] ?? false,
      coralReefs: map['coralReefs'] ?? false,
      doplhins: map['doplhins'] ?? false,
      groupers: map['groupers'] ?? false,
      hammerHeadedSharks: map['hammerHeadedSharks'] ?? false,
      hardCorals: map['hardCorals'] ?? false,
      jellyFish: map['jellyFish'] ?? false,
      lionFish: map['lionFish'] ?? false,
      lobsters: map['lobsters'] ?? false,
      mantaRays: map['mantaRays'] ?? false,
      molaMola: map['molaMola'] ?? false,
      morayEels: map['morayEels'] ?? false,
      oceanicHammerHeadedSharks: map['oceanicHammerHeadedSharks'] ?? false,
      oceanicMantaRays: map['oceanicMantaRays'] ?? false,
      oceanicFishes: map['oceanicFishes'] ?? false,
      octopuses: map['octopuses'] ?? false,
      rays: map['rays'] ?? false,
      reefFishes: map['reefFishes'] ?? false,
      reefSharks: map['reefSharks'] ?? false,
      sandTigerSharks: map['sandTigerSharks'] ?? false,
      schoolOfReefSharks: map['schoolOfReefSharks'] ?? false,
      shipWrecks: map['shipWrecks'] ?? false,
      softCorals: map['softCorals'] ?? false,
      starFish: map['starFish'] ?? false,
      thresherSharks: map['thresherSharks'] ?? false,
      tigerSharks: map['tigerSharks'] ?? false,
      turtles: map['turtles'] ?? false,
      whaleShark: map['whaleShark'] ?? false,
      whiteTipReefSharks: map['whiteTipReefSharks'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Activities.fromJson(String source) =>
      Activities.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Activities(bigGameFishing: $bigGameFishing, canoeing: $canoeing, catamaranSailing: $catamaranSailing, flyBoard: $flyBoard, funTube: $funTube, glassBottomBoat: $glassBottomBoat, jetBlade: $jetBlade, jetSkiTours: $jetSkiTours, kiteSurfing: $kiteSurfing, kneeBoarding: $kneeBoarding, parasailing: $parasailing, schillerBike: $schillerBike, seaBob: $seaBob, semiSubmarine: $semiSubmarine, snorkling: $snorkling, speedBoat: $speedBoat, speedster: $speedster, standUpPaddleBoat: $standUpPaddleBoat, sunsetCruise: $sunsetCruise, supSki: $supSki, surfing: $surfing, swimming: $swimming, trimaranSailing: $trimaranSailing, wakeBoarding: $wakeBoarding, waterSki: $waterSki, windSurfing: $windSurfing, bananaBoatRide: $bananaBoatRide, jetSki: $jetSki, barracudas: $barracudas, blackTipReefSharks: $blackTipReefSharks, clownFish: $clownFish, coralReefs: $coralReefs, doplhins: $doplhins, groupers: $groupers, hammerHeadedSharks: $hammerHeadedSharks, hardCorals: $hardCorals, jellyFish: $jellyFish, lionFish: $lionFish, lobsters: $lobsters, mantaRays: $mantaRays, molaMola: $molaMola, morayEels: $morayEels, oceanicHammerHeadedSharks: $oceanicHammerHeadedSharks, oceanicMantaRays: $oceanicMantaRays, oceanicFishes: $oceanicFishes, octopuses: $octopuses, rays: $rays, reefFishes: $reefFishes, reefSharks: $reefSharks, sandTigerSharks: $sandTigerSharks, schoolOfReefSharks: $schoolOfReefSharks, shipWrecks: $shipWrecks, softCorals: $softCorals, starFish: $starFish, thresherSharks: $thresherSharks, tigerSharks: $tigerSharks, turtles: $turtles, whaleShark: $whaleShark, whiteTipReefSharks: $whiteTipReefSharks)';
  }

  @override
  bool operator ==(covariant Activities other) {
    if (identical(this, other)) return true;

    return other.bigGameFishing == bigGameFishing &&
        other.canoeing == canoeing &&
        other.catamaranSailing == catamaranSailing &&
        other.flyBoard == flyBoard &&
        other.funTube == funTube &&
        other.glassBottomBoat == glassBottomBoat &&
        other.jetBlade == jetBlade &&
        other.jetSkiTours == jetSkiTours &&
        other.kiteSurfing == kiteSurfing &&
        other.kneeBoarding == kneeBoarding &&
        other.parasailing == parasailing &&
        other.schillerBike == schillerBike &&
        other.seaBob == seaBob &&
        other.semiSubmarine == semiSubmarine &&
        other.snorkling == snorkling &&
        other.speedBoat == speedBoat &&
        other.speedster == speedster &&
        other.standUpPaddleBoat == standUpPaddleBoat &&
        other.sunsetCruise == sunsetCruise &&
        other.supSki == supSki &&
        other.surfing == surfing &&
        other.swimming == swimming &&
        other.trimaranSailing == trimaranSailing &&
        other.wakeBoarding == wakeBoarding &&
        other.waterSki == waterSki &&
        other.windSurfing == windSurfing &&
        other.bananaBoatRide == bananaBoatRide &&
        other.jetSki == jetSki &&
        other.barracudas == barracudas &&
        other.blackTipReefSharks == blackTipReefSharks &&
        other.clownFish == clownFish &&
        other.coralReefs == coralReefs &&
        other.doplhins == doplhins &&
        other.groupers == groupers &&
        other.hammerHeadedSharks == hammerHeadedSharks &&
        other.hardCorals == hardCorals &&
        other.jellyFish == jellyFish &&
        other.lionFish == lionFish &&
        other.lobsters == lobsters &&
        other.mantaRays == mantaRays &&
        other.molaMola == molaMola &&
        other.morayEels == morayEels &&
        other.oceanicHammerHeadedSharks == oceanicHammerHeadedSharks &&
        other.oceanicMantaRays == oceanicMantaRays &&
        other.oceanicFishes == oceanicFishes &&
        other.octopuses == octopuses &&
        other.rays == rays &&
        other.reefFishes == reefFishes &&
        other.reefSharks == reefSharks &&
        other.sandTigerSharks == sandTigerSharks &&
        other.schoolOfReefSharks == schoolOfReefSharks &&
        other.shipWrecks == shipWrecks &&
        other.softCorals == softCorals &&
        other.starFish == starFish &&
        other.thresherSharks == thresherSharks &&
        other.tigerSharks == tigerSharks &&
        other.turtles == turtles &&
        other.whaleShark == whaleShark &&
        other.whiteTipReefSharks == whiteTipReefSharks;
  }

  @override
  int get hashCode {
    return bigGameFishing.hashCode ^
        canoeing.hashCode ^
        catamaranSailing.hashCode ^
        flyBoard.hashCode ^
        funTube.hashCode ^
        glassBottomBoat.hashCode ^
        jetBlade.hashCode ^
        jetSkiTours.hashCode ^
        kiteSurfing.hashCode ^
        kneeBoarding.hashCode ^
        parasailing.hashCode ^
        schillerBike.hashCode ^
        seaBob.hashCode ^
        semiSubmarine.hashCode ^
        snorkling.hashCode ^
        speedBoat.hashCode ^
        speedster.hashCode ^
        standUpPaddleBoat.hashCode ^
        sunsetCruise.hashCode ^
        supSki.hashCode ^
        surfing.hashCode ^
        swimming.hashCode ^
        trimaranSailing.hashCode ^
        wakeBoarding.hashCode ^
        waterSki.hashCode ^
        windSurfing.hashCode ^
        bananaBoatRide.hashCode ^
        jetSki.hashCode ^
        barracudas.hashCode ^
        blackTipReefSharks.hashCode ^
        clownFish.hashCode ^
        coralReefs.hashCode ^
        doplhins.hashCode ^
        groupers.hashCode ^
        hammerHeadedSharks.hashCode ^
        hardCorals.hashCode ^
        jellyFish.hashCode ^
        lionFish.hashCode ^
        lobsters.hashCode ^
        mantaRays.hashCode ^
        molaMola.hashCode ^
        morayEels.hashCode ^
        oceanicHammerHeadedSharks.hashCode ^
        oceanicMantaRays.hashCode ^
        oceanicFishes.hashCode ^
        octopuses.hashCode ^
        rays.hashCode ^
        reefFishes.hashCode ^
        reefSharks.hashCode ^
        sandTigerSharks.hashCode ^
        schoolOfReefSharks.hashCode ^
        shipWrecks.hashCode ^
        softCorals.hashCode ^
        starFish.hashCode ^
        thresherSharks.hashCode ^
        tigerSharks.hashCode ^
        turtles.hashCode ^
        whaleShark.hashCode ^
        whiteTipReefSharks.hashCode;
  }
}
