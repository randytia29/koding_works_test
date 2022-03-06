import 'package:equatable/equatable.dart';
import 'package:kodingworkstest/features/home/data/models/category_model.dart';
import 'package:kodingworkstest/features/home/data/models/custom_price_config_model.dart';
import 'package:kodingworkstest/features/home/data/models/image_model.dart';
import 'package:kodingworkstest/features/home/data/models/location_model.dart';
import 'package:kodingworkstest/features/home/data/models/reseller_configs_model.dart';
import 'package:kodingworkstest/features/home/data/models/size_model.dart';

class Product extends Equatable {
  const Product({
    required this.id,
    required this.type,
    required this.checkoutType,
    required this.name,
    required this.description,
    required this.status,
    required this.categories,
    required this.image,
    required this.images,
    required this.price,
    required this.promoPriceType,
    required this.isFeatured,
    required this.isPromo,
    required this.promoPrice,
    required this.regularPrice,
    required this.promoStartDate,
    required this.promoEndDate,
    required this.locations,
    required this.isAvailableInAllLocation,
    required this.unit,
    required this.priority,
    required this.size,
    required this.weight,
    required this.cogs,
    required this.sku,
    required this.isAvailableWhenOutOfStock,
    required this.isPhysicalProduct,
    required this.isTrackInventory,
    required this.isResellerAvailable,
    required this.resellerConfigs,
    required this.isCustomPriceAvailable,
    required this.customPriceConfig,
    required this.slug,
    required this.isWholesalePriceAvailable,
    required this.wholesalePrices,
    required this.minimumOrderQuantity,
    required this.maximumOrderQuantity,
    required this.averageRating,
    required this.onStock,
    required this.quantity,
    required this.totalSales,
    required this.totalOrderedItems,
    required this.totalOrders,
  });

  final String id;
  final String type;
  final String checkoutType;
  final String name;
  final String description;
  final String status;
  final List<CategoryModel> categories;
  final ImageModel image;
  final List<String> images;
  final int price;
  final String? promoPriceType;
  final bool isFeatured;
  final bool isPromo;
  final int promoPrice;
  final int regularPrice;
  final DateTime? promoStartDate;
  final DateTime? promoEndDate;
  final List<LocationModel> locations;
  final bool isAvailableInAllLocation;
  final String unit;
  final int priority;
  final SizeModel size;
  final int weight;
  final int cogs;
  final String sku;
  final bool isAvailableWhenOutOfStock;
  final bool isPhysicalProduct;
  final bool isTrackInventory;
  final bool isResellerAvailable;
  final ResellerConfigsModel resellerConfigs;
  final bool isCustomPriceAvailable;
  final CustomPriceConfigModel customPriceConfig;
  final String slug;
  final bool isWholesalePriceAvailable;
  final List<int> wholesalePrices;
  final int minimumOrderQuantity;
  final int maximumOrderQuantity;
  final int averageRating;
  final bool onStock;
  final int quantity;
  final int totalSales;
  final int totalOrderedItems;
  final int totalOrders;

  @override
  List<Object?> get props => [
        id,
        type,
        checkoutType,
        name,
        description,
        status,
        categories,
        image,
        images,
        price,
        promoPriceType,
        isFeatured,
        isPromo,
        promoPrice,
        regularPrice,
        promoStartDate,
        promoEndDate,
        locations,
        isAvailableInAllLocation,
        unit,
        priority,
        size,
        weight,
        cogs,
        sku,
        isAvailableWhenOutOfStock,
        isPhysicalProduct,
        isTrackInventory,
        isResellerAvailable,
        resellerConfigs,
        isCustomPriceAvailable,
        customPriceConfig,
        slug,
        isWholesalePriceAvailable,
        wholesalePrices,
        minimumOrderQuantity,
        maximumOrderQuantity,
        averageRating,
        onStock,
        quantity,
        totalSales,
        totalOrderedItems,
        totalOrders
      ];
}
