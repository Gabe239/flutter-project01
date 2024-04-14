import 'package:flutter/material.dart';

class SearchCards extends StatelessWidget {
  const SearchCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildRowsOfCardGenres(),
    );
  }

  List<Widget> _buildRowsOfCardGenres() {
    List<Map<String, dynamic>> cardData = [
      {
        'name': 'Rock',
        'imagePath': 'assets/images/albums/album18.jpeg',
        'color': Colors.purpleAccent,
      },
      {
        'name': 'English',
        'imagePath': 'assets/images/albums/album12.jpg',
        'color': Colors.blueAccent,
      },
      {
        'name': 'Spanish',
        'imagePath': 'assets/images/albums/album14.jpeg',
        'color': Colors.greenAccent,
      },
      {
        'name': 'French',
        'imagePath': 'assets/images/albums/album16.png',
        'color': Colors.orangeAccent,
      },
    ];

    List<Widget> rows = [];

    for (int i = 0; i < cardData.length; i += 2) {
      List<Widget> rowChildren = [];
      if (i < cardData.length) {
        rowChildren.add(
          Expanded(
            child: CardGenre(
              name: cardData[i]['name'],
              imagePath: cardData[i]['imagePath'],
              backgroundColor: cardData[i]['color'],
            ),
          ),
        );
      }
      if (i + 1 < cardData.length) {
        rowChildren.add(
          Expanded(
            child: CardGenre(
              name: cardData[i + 1]['name'],
              imagePath: cardData[i + 1]['imagePath'],
              backgroundColor: cardData[i + 1]['color'],
            ),
          ),
        );
      }

      rows.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowChildren,
          ),
        ),
      );
    }

    return rows;
  }
}

class CardGenre extends StatelessWidget {
  final String name;
  final String imagePath;
  final Color backgroundColor;

  const CardGenre({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjusted to spaceBetween
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DiamondClip(
                  imagePath: imagePath,
                  size: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiamondClip extends StatelessWidget {
  final String imagePath;
  final double size;

  const DiamondClip({
    Key? key,
    required this.imagePath,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiamondClipper(),
      child: Container(
        width: size,
        height: size,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Define the diamond shape using path commands
    path.moveTo(size.width / 2, 0); // Top point
    path.lineTo(size.width, size.height / 2); // Right point
    path.lineTo(size.width / 2, size.height); // Bottom point
    path.lineTo(0, size.height / 2); // Left point
    path.close(); // Close the path to form a complete shape

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
