import 'package:canino_food/data/data.dart';

import '../models/product_model.dart';

class ProductController {
  static List<Product> getProducts() {
    return products;
  }

  static List<Product> getProductsByCategory(String category) {
    return products.where((product) => product.category == category).toList();
  }
}
