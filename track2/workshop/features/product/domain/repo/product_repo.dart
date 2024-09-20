import '../entities/product.dart';

abstract interface class ProductRepo {
  List<Product> getAllProducts();
  Product getProduct(int id);
  void addProduct(Product product);
  void updateProduct(Product product);
  void deleteProduct(int id);
  
}