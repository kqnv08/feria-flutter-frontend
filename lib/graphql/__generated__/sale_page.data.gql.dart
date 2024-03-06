// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'sale_page.data.gql.g.dart';

abstract class GSaleData implements Built<GSaleData, GSaleDataBuilder> {
  GSaleData._();

  factory GSaleData([void Function(GSaleDataBuilder b) updates]) = _$GSaleData;

  static void _initializeBuilder(GSaleDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaleData_sale get sale;
  static Serializer<GSaleData> get serializer => _$gSaleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleData.serializer,
        json,
      );
}

abstract class GSaleData_sale
    implements Built<GSaleData_sale, GSaleData_saleBuilder> {
  GSaleData_sale._();

  factory GSaleData_sale([void Function(GSaleData_saleBuilder b) updates]) =
      _$GSaleData_sale;

  static void _initializeBuilder(GSaleData_saleBuilder b) =>
      b..G__typename = 'Sale';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  _i2.GDateTime? get createdAt;
  double get total;
  BuiltList<GSaleData_sale_details> get details;
  static Serializer<GSaleData_sale> get serializer => _$gSaleDataSaleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleData_sale.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleData_sale? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleData_sale.serializer,
        json,
      );
}

abstract class GSaleData_sale_details
    implements Built<GSaleData_sale_details, GSaleData_sale_detailsBuilder> {
  GSaleData_sale_details._();

  factory GSaleData_sale_details(
          [void Function(GSaleData_sale_detailsBuilder b) updates]) =
      _$GSaleData_sale_details;

  static void _initializeBuilder(GSaleData_sale_detailsBuilder b) =>
      b..G__typename = 'SaleDetail';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get quantity;
  double? get price;
  double? get total;
  GSaleData_sale_details_product? get product;
  static Serializer<GSaleData_sale_details> get serializer =>
      _$gSaleDataSaleDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleData_sale_details.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleData_sale_details? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleData_sale_details.serializer,
        json,
      );
}

abstract class GSaleData_sale_details_product
    implements
        Built<GSaleData_sale_details_product,
            GSaleData_sale_details_productBuilder> {
  GSaleData_sale_details_product._();

  factory GSaleData_sale_details_product(
          [void Function(GSaleData_sale_details_productBuilder b) updates]) =
      _$GSaleData_sale_details_product;

  static void _initializeBuilder(GSaleData_sale_details_productBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String get name;
  static Serializer<GSaleData_sale_details_product> get serializer =>
      _$gSaleDataSaleDetailsProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleData_sale_details_product.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleData_sale_details_product? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleData_sale_details_product.serializer,
        json,
      );
}
