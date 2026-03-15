import 'package:app_clone_mercado_livre/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = CartStoreBase with _$CartStore;

abstract class CartStoreBase with Store {
  @observable
  ObservableList<Product> cartProducts = ObservableList<Product>();

  @action
  bool addProduct(Product product) {
    final exists = cartProducts.any((e) => e.id == product.id);
    if (!exists) {
      cartProducts.add(product);
      return true;
    }

    return false;
  }

  @computed
  int get cartCount => cartProducts.length;
}
