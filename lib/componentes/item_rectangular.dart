import 'package:flutter/material.dart';

class ItemRectangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://static.rogerebert.com/uploads/movie/movie_poster/the-king-2019/large_king-poster.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 15.0,)
      ],
    );
  }
}
