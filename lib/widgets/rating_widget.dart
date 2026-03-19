import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/product_model.dart';

class RatingWidget extends StatefulWidget {
  final Product product;
  const RatingWidget({super.key, required this.product});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: widget.product.rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18,
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.blue),
      onRatingUpdate: (newRating) {
        
        productStore.updateRating(widget.product, newRating);
      },
    );
  }
}
