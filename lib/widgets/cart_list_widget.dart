import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:flutter/material.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartStore.cartProducts.length,
      itemBuilder: (context, index) {
        final product = cartStore.cartProducts[index];

        return Row(
          children: [
            Text("$index - ${product.name} - ${product.price * product.id}"),
            Text(""),
          ],
        );
      },
    );
  }
}
