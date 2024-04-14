import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Image(
              image: NetworkImage('https://preview.redd.it/rnqa7yhv4il71.jpg?width=1080&crop=smart&auto=webp&s=de143a33b07bab0242ab488cbfe9145e152c01b9'),
            ),
            title: Text("Liked Songs"),
            subtitle: Text("353 songs"),
          )
        ]
      )

    );
  }
}
