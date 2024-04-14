import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  final List<String> artistNames = [
    "Artist 1",
    "Artist 3",
    "Artist 4",
    "Artist 6",
  ];

  final List<String> artistImages = [
    "assets/images/artists/artist1.jpg",
    "assets/images/artists/artist3.jpg",
    "assets/images/artists/artist4.jpg",
    "assets/images/artists/artist6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Featured Artists",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: List.generate(artistNames.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 16), // Add spacing between columns
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(artistImages[index]),
                    ),
                    SizedBox(height: 8), // Add vertical spacing
                    Text(
                      artistNames[index],
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}