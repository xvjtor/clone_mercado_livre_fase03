// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on ProductStoreBase, Store {
  late final _$productListAtom = Atom(
    name: 'ProductStoreBase.productList',
    context: context,
  );

  @override
  ObservableList<Product> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<Product> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'ProductStoreBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$loadProductAsyncAction = AsyncAction(
    'ProductStoreBase.loadProduct',
    context: context,
  );

  @override
  Future loadProduct() {
    return _$loadProductAsyncAction.run(() async => super.loadProduct());
  }

  late final _$ProductStoreBaseActionController = ActionController(
    name: 'ProductStoreBase',
    context: context,
  );

  @override
  void updateRating(Product product, double newRating) {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction(
      name: 'ProductStoreBase.updateRating',
    );
    try {
      return super.updateRating(product, newRating);
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productList: ${productList},
isLoading: ${isLoading}
    ''';
  }
}
