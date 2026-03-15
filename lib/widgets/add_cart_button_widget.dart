import 'package:app_clone_mercado_livre/models/product_model.dart';

import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  final Product product;
  const AddCartButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: Key("addProductToCart"),
      onTap: () {
        if (cartStore.addProduct(product) == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              showCloseIcon: true,
              closeIconColor: Colors.black,
              content: Text(
                "Produto adicionado!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              backgroundColor: Colors.amberAccent,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              showCloseIcon: true,
              closeIconColor: Colors.black,
              content: Text(
                "Produto não adicionado!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      },

      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,

      child: Text(
        "Add carrinho",
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
      ),
    );
  }
}
