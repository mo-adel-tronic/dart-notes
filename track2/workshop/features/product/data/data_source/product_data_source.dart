import 'dart:convert';

import '../../../../core/data/products/data.dart';
import '../../../../core/mixins.dart';
import '../model/product_model.dart';

class ProductDataSource with ProductsData, GenerateId<ProductModel> {
  List<ProductModel> getAllProducts () {
    List data = jsonDecode(ProductsData.products);
    return data.map<ProductModel>((product) => ProductModel.fromMap(product)).toList();
  }
}