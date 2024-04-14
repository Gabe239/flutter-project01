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
        'color': Colors.purpleAccent,
      },
      {
        'name': 'English',
        'color': Colors.blueAccent,
      },
      {
        'name': 'Spanish',
        'color': Colors.greenAccent,
      },
      {
        'name': 'French',
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
  final Color backgroundColor;

  const CardGenre({
    Key? key,
    required this.name,
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
            ],
          ),
        ),
      ),
    );
  }
}

