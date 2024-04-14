import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardsBuild(
              'https://preview.redd.it/rnqa7yhv4il71.jpg?width=1080&crop=smart&auto=webp&s=de143a33b07bab0242ab488cbfe9145e152c01b9', 
              'Liked Songs'
            ),
            cardsBuild(
              'https://i.pinimg.com/originals/7e/69/e0/7e69e0a688684a15dd503707619a3268.png', 
              'Rock'
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardsBuild(
              'https://i.pinimg.com/564x/55/51/1b/55511b29a74cc6026c618934e701b7d2.jpg', 
              'Pop'
            ),
            cardsBuild(
              'https://i.pinimg.com/564x/f6/53/41/f65341b7fe175e58bc54c875e536f2dd.jpg', 
              'Classic'
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardsBuild(
              'https://i.pinimg.com/564x/e3/1f/14/e31f141223d468d023a39bfafca476c3.jpg', 
              'K-pop'
            ),
            cardsBuild(
              'https://i.pinimg.com/564x/14/2c/d2/142cd28ae833e031d13b3ad44b3aba2f.jpg', 
              'Studying'
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardsBuild(
              'https://i.pinimg.com/564x/bc/d3/c3/bcd3c3057b130edf4e02605a03165e07.jpg', 
              'Gaming'
            ),
            cardsBuild(
              'https://i.pinimg.com/564x/4c/a5/c8/4ca5c8ec22dc1ffed334577d78376f6c.jpg', 
              'Reading'
            ),
          ],
        ),
      ],
    );
  }
}

Card cardsBuild( String img, String txt){
  return Card(
    color: Color.fromARGB(255, 29, 29, 29),
    child: Container(
      width: 170,
      child: Row(
        children: [Image(width: 50, height: 50, image: NetworkImage(img),),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 14, 25, 16),
          child: Text(txt)
        )
        ],
      ),
    ),
  );
}