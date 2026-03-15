import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:app_clone_mercado_livre/widgets/cart_list_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 2,
        shadowColor: Colors.black38,
        leading: BackButton(
          key: Key("backBtn"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Carrinho de compras",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: cartStore.cartProducts.isEmpty
          ? Center(
              child: Image.asset(
                key: Key("imageCart"),
                "assets/images/empty_cart.png",
                scale: 3,
              ),
            )
          : CartListWidget(),
    );
  }
}
