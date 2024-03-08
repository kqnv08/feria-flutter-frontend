// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'products_page.data.gql.g.dart';

abstract class GCreateProductData
    implements Built<GCreateProductData, GCreateProductDataBuilder> {
  GCreateProductData._();

  factory GCreateProductData(
          [void Function(GCreateProductDataBuilder b) updates]) =
      _$GCreateProductData;

  static void _initializeBuilder(GCreateProductDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateProductData_createProduct get createProduct;
  static Serializer<GCreateProductData> get serializer =>
      _$gCreateProductDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateProductData.serializer,
        json,
      );
}

abstract class GCreateProductData_createProduct
    implements
        Built<GCreateProductData_createProduct,
            GCreateProductData_createProductBuilder> {
  GCreateProductData_createProduct._();

  factory GCreateProductData_createProduct(
          [void Function(GCreateProductData_createProductBuilder b) updates]) =
      _$GCreateProductData_createProduct;

  static void _initializeBuilder(GCreateProductData_createProductBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  static Serializer<GCreateProductData_createProduct> get serializer =>
      _$gCreateProductDataCreateProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductData_createProduct.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductData_createProduct? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateProductData_createProduct.serializer,
        json,
      );
}

abstract class GUpdateProductData
    implements Built<GUpdateProductData, GUpdateProductDataBuilder> {
  GUpdateProductData._();

  factory GUpdateProductData(
          [void Function(GUpdateProductDataBuilder b) updates]) =
      _$GUpdateProductData;

  static void _initializeBuilder(GUpdateProductDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProductData_updateProduct get updateProduct;
  static Serializer<GUpdateProductData> get serializer =>
      _$gUpdateProductDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductData.serializer,
        json,
      );
}

abstract class GUpdateProductData_updateProduct
    implements
        Built<GUpdateProductData_updateProduct,
            GUpdateProductData_updateProductBuilder> {
  GUpdateProductData_updateProduct._();

  factory GUpdateProductData_updateProduct(
          [void Function(GUpdateProductData_updateProductBuilder b) updates]) =
      _$GUpdateProductData_updateProduct;

  static void _initializeBuilder(GUpdateProductData_updateProductBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  static Serializer<GUpdateProductData_updateProduct> get serializer =>
      _$gUpdateProductDataUpdateProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductData_updateProduct.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductData_updateProduct? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductData_updateProduct.serializer,
        json,
      );
}
