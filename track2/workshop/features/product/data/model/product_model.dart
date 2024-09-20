import 'dart:convert';

import '../../domain/entities/product.dart';
import '../../domain/entities/rating.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id, 
		required super.title, 
		required super.price, 
		super.description, 
		required super.category, 
		required super.image, 
		super.rating,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) => ProductModel(
				id: data['id'] as int,
				title: data['title'] as String,
				price: (data['price'] as num).toDouble(),
				description: data['description'] as String?,
				category: data['category'] as String,
				image: data['image'] as String,
				rating: data['rating'] == null
						? null
						: Rating.fromMap(data['rating'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'title': title,
				'price': price,
				'description': description,
				'category': category,
				'image': image,
				'rating': rating?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProductModel].
	factory ProductModel.fromJson(String data) {
		return ProductModel.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ProductModel] to a JSON string.
	String toJson() => json.encode(toMap());
}