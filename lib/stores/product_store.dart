import 'package:mobx/mobx.dart';

import '../models/product_model.dart';

part 'product_store.g.dart';

class ProductStore = ProductStoreBase with _$ProductStore;

abstract class ProductStoreBase with Store {
  @observable
  ObservableList<Product> productList = ObservableList<Product>();

  @observable
  bool isLoading = false;

  @action
  void loadProduct() async {
    isLoading = true;

    await Future.delayed(Duration(milliseconds: 1400));
    for (int i = 1; i <= 15; i++) {
      productList.add(
        Product(
          id: i,
          name: "Apple Iphone 11 Pro (128gb) - Preto",
          price: 599.99 * i,
          image: "assets/images/iphone.png",
        ),
      );
    }

    isLoading = false;
   
  }

  @action
  void updateRating(Product product, double newRating) {
    product.rating = newRating;
    productList = ObservableList.of(productList);
  }
}
