import 'package:app_clone_mercado_livre/stores/stores.dart';
import 'package:app_clone_mercado_livre/widgets/add_cart_button_widget.dart';
import 'package:app_clone_mercado_livre/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  ProductListWidget({super.key});

  final products = productStore.productList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        double installments = product.price / 10;

        return Card(
          key: Key("productItem"),
          margin: .only(bottom: 15, top: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(4),
          ),
          color: Colors.white,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              crossAxisAlignment: .start,
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 15,
                    ),
                    child: Image.asset(
                      product.image,
                      scale: 2,
                      key: Key("productImage"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 0, bottom: 2),
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .spaceBetween,

                      children: [
                        Text(product.name, style: TextStyle(fontSize: 14)),
                        SizedBox(height: 2),
                        Text(
                          "R\$ ${product.price.toString()}",
                          style: TextStyle(fontWeight: .bold, fontSize: 17),
                        ),

                        RichText(
                          text: TextSpan(
                            text: "em ",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    "10x R\$ ${installments.round().toStringAsFixed(2)} sem juros",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),

                        Text(
                          "Frete grátis",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: .bold,
                            fontSize: 18,
                          ),
                        ),

                        Text(
                          "Disponível em 6 cores",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(height: 2),
                        RatingWidget(product: product),
                        SizedBox(height: 20),

                        Align(
                          alignment: .bottomRight,
                          child: AddCartButton(product: product),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
