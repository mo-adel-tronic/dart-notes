import '../entities/product.dart';
import '../repo/product_repo.dart';

final class GetAllProducts {
  ProductRepo productRepo;
  GetAllProducts(this.productRepo);

  List<Product> call() {
    return productRepo.getAllProducts();
  }
}