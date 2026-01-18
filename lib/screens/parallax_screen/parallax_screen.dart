import 'package:flutter/material.dart';
import 'package:parallax_effect/screens/parallax_screen/model/localtion_model.dart';
import 'package:parallax_effect/screens/parallax_screen/widgets/parallax_item_widget.dart';

class ParallaxScreen extends StatefulWidget {
  const ParallaxScreen({super.key});

  @override
  State<ParallaxScreen> createState() => _ParallaxScreenState();
}

class _ParallaxScreenState extends State<ParallaxScreen> {
  List<LocaltionModel> locations = [
    LocaltionModel(
      imageUrl: 'assets/pexels-arts-1496373.jpg',
      name: 'Alpine Sentinel',
      place: 'Swiss Alps',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-carmen-ong-584272-1353238.jpg',
      name: 'Verdant Passage',
      place: 'Costa Rica',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-alexravvas-20727530.jpg',
      name: 'Glacial Rift',
      place: 'Alaskan Fjords',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-cottonbro-4828166.jpg',
      name: 'Harbor Loom',
      place: 'Amsterdam, Netherlands',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-deeehabs-16107909.jpg',
      name: 'Sunset Overlook',
      place: 'Santorini, Greece',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-eberhardgross-1624438.jpg',
      name: 'Mossed Ruins',
      place: 'Bavaria, Germany',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-eberhardgross-1743366.jpg',
      name: 'Tidal Wall',
      place: 'Faroe Islands',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-eberhardgross-2310641.jpg',
      name: 'Desert Bloom',
      place: 'Dubai, UAE',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-grisentig-4215110.jpg',
      name: 'Rainforest Veil',
      place: 'Amazon Basin',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-guihankenne-2797490.jpg',
      name: 'Coastal Curve',
      place: 'Portugal',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-igor-meghega-315695093-15211372.jpg',
      name: 'Amber Prairie',
      place: 'Saskatchewan, Canada',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-igor-meghega-315695093-16547164.jpg',
      name: 'Crimson Track',
      place: 'Buenos Aires, Argentina',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-jaime-reimer-1376930-2662086.jpg',
      name: 'Marsh Light',
      place: 'Everglades, USA',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-jonathanschmer-2397306.jpg',
      name: 'Midnight Canyon',
      place: 'Arizona, USA',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-lureofadventure-13778702.jpg',
      name: 'City of Towers',
      place: 'Shanghai, China',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-packermann-1666021.jpg',
      name: 'Crystal Arch',
      place: 'Patagonia',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-peter-xie-371876898-34613667.jpg',
      name: 'Neon Harbor',
      place: 'Hong Kong',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-shvets-production-7947142.jpg',
      name: 'City Pulse',
      place: 'Singapore',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-simon73-1266810.jpg',
      name: 'Azure Plateau',
      place: 'Utah, USA',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-tobiasbjorkli-1559393.jpg',
      name: 'Winter Trail',
      place: 'Lapland',
    ),
    LocaltionModel(
      imageUrl: 'assets/pexels-todd-trapani-488382-1420440.jpg',
      name: 'Tropical Outcrop',
      place: 'Bali, Indonesia',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (final location in locations)
                ParallaxItemWidget(
                  imageUrl: location.imageUrl,
                  name: location.name,
                  country: location.place,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
