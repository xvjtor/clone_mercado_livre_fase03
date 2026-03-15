// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on CartStoreBase, Store {
  Computed<int>? _$cartCountComputed;

  @override
  int get cartCount => (_$cartCountComputed ??= Computed<int>(
    () => super.cartCount,
    name: 'CartStoreBase.cartCount',
  )).value;

  late final _$cartProductsAtom = Atom(
    name: 'CartStoreBase.cartProducts',
    context: context,
  );

  @override
  ObservableList<Product> get cartProducts {
    _$cartProductsAtom.reportRead();
    return super.cartProducts;
  }

  @override
  set cartProducts(ObservableList<Product> value) {
    _$cartProductsAtom.reportWrite(value, super.cartProducts, () {
      super.cartProducts = value;
    });
  }

  late final _$CartStoreBaseActionController = ActionController(
    name: 'CartStoreBase',
    context: context,
  );

  @override
  bool addProduct(Product product) {
    final _$actionInfo = _$CartStoreBaseActionController.startAction(
      name: 'CartStoreBase.addProduct',
    );
    try {
      return super.addProduct(product);
    } finally {
      _$CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartProducts: ${cartProducts},
cartCount: ${cartCount}
    ''';
  }
}
