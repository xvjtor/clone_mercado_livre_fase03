import 'package:app_clone_mercado_livre/widgets/cart_icon_widget.dart';
import 'package:app_clone_mercado_livre/widgets/product_list_widget.dart';
import 'package:app_clone_mercado_livre/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isLoading = true;
  int results = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 1400), () {
      setState(() {
        isLoading = false;
        results = 15;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
         
          surfaceTintColor: Colors.transparent,

          key: Key("inputSearch"),
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 15, bottom: 6),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [SearchWidget(), CartIconWidget()],
                ),
              ),
            ],
          ),
          backgroundColor: Colors.amberAccent,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              child: Padding(
                padding: .only(bottom: 12, top: 6, left: 30),
                child: Row(
                  children: [
                    Icon(Icons.pin_drop_outlined, size: 20),
                    SizedBox(width: 8),
                    Text("Informe o seu cep"),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios, size: 18),
                  ],
                ),
              ),
            ),
            Card(
              margin: .zero,
              shape: RoundedRectangleBorder(borderRadius: .zero),
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("$results resultados"),
                    Spacer(),
                    Text("Filtrar (2)", style: TextStyle(color: Colors.blue)),
                    Icon(Icons.keyboard_arrow_down, color: Colors.blue),
                  ],
                ),
              ),
            ),
            isLoading
                ? Flexible(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.amberAccent,
                      ),
                    ),
                  )
                : Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProductListWidget(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
