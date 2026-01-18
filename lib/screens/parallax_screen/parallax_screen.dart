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
      imageUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=60',
      name: 'Mountains',
      place: 'Switzerland',
    ),
    LocaltionModel(
      imageUrl:
          'https://images.unsplash.com/photo-1500534623283-312aade485b7?auto=format&fit=crop&w=800&q=60',
      name: 'Beach',
      place: 'Maldives',
    ),
    LocaltionModel(
      imageUrl:
          'https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=800&q=60',
      name: 'Cityscape',
      place: 'New York',
    ),
    LocaltionModel(
      imageUrl:
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=60',
      name: 'Desert',
      place: 'Sahara',
    ),
    LocaltionModel(
      imageUrl:
          "https://images.hdqwalls.com/wallpapers/mountain-scenery-morning-sun-rays-4k-kf.jpg",
      name: "Mountain Scenery",
      place: "Unknown",
    ),
    LocaltionModel(
      imageUrl:
          "https://www.pixelstalk.net/wp-content/uploads/2016/07/Amazing-nature-scenery-wallpaper-3840x2160.jpg",
      name: "Amazing Nature Scenery",
      place: "Unknown",
    ),
    LocaltionModel(
      imageUrl:
          "https://tse1.mm.bing.net/th/id/OIP.reMnLhYTsvhtc4ktbP1HUQHaEo?rs=1&pid=ImgDetMain&o=7&rm=3",
      name: "Unknown",
      place: "Unknown",
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
