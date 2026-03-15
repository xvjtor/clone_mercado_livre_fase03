import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  final String rating;
  const RatingWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18,
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.blue),
      onRatingUpdate: (rating) {},
    );
  }
}
