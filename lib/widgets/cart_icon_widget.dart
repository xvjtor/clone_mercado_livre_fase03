import 'package:app_clone_mercado_livre/pages/cart_page.dart';
import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (contex) => CartPage()),
        );
      },
      child: Observer(
        builder: (_) => Stack(
          clipBehavior: .none,
          children: [
            Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 25),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: .all(6),
                decoration: BoxDecoration(shape: .circle, color: Colors.red),
                child: Text(
                  cartStore.cartCount.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
