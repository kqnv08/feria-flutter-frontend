// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'products.data.gql.g.dart';

abstract class GproductFindAllData
    implements Built<GproductFindAllData, GproductFindAllDataBuilder> {
  GproductFindAllData._();

  factory GproductFindAllData(
          [void Function(GproductFindAllDataBuilder b) updates]) =
      _$GproductFindAllData;

  static void _initializeBuilder(GproductFindAllDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GproductFindAllData_productFindAll> get productFindAll;
  static Serializer<GproductFindAllData> get serializer =>
      _$gproductFindAllDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductFindAllData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductFindAllData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductFindAllData.serializer,
        json,
      );
}

abstract class GproductFindAllData_productFindAll
    implements
        Built<GproductFindAllData_productFindAll,
            GproductFindAllData_productFindAllBuilder> {
  GproductFindAllData_productFindAll._();

  factory GproductFindAllData_productFindAll(
      [void Function(GproductFindAllData_productFindAllBuilder b)
          updates]) = _$GproductFindAllData_productFindAll;

  static void _initializeBuilder(GproductFindAllData_productFindAllBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String get name;
  double? get price;
  String? get code;
  static Serializer<GproductFindAllData_productFindAll> get serializer =>
      _$gproductFindAllDataProductFindAllSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductFindAllData_productFindAll.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductFindAllData_productFindAll? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductFindAllData_productFindAll.serializer,
        json,
      );
}

abstract class GproductListPageData
    implements Built<GproductListPageData, GproductListPageDataBuilder> {
  GproductListPageData._();

  factory GproductListPageData(
          [void Function(GproductListPageDataBuilder b) updates]) =
      _$GproductListPageData;

  static void _initializeBuilder(GproductListPageDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GproductListPageData_productListPage get productListPage;
  static Serializer<GproductListPageData> get serializer =>
      _$gproductListPageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductListPageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductListPageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductListPageData.serializer,
        json,
      );
}

abstract class GproductListPageData_productListPage
    implements
        Built<GproductListPageData_productListPage,
            GproductListPageData_productListPageBuilder> {
  GproductListPageData_productListPage._();

  factory GproductListPageData_productListPage(
      [void Function(GproductListPageData_productListPageBuilder b)
          updates]) = _$GproductListPageData_productListPage;

  static void _initializeBuilder(
          GproductListPageData_productListPageBuilder b) =>
      b..G__typename = 'ProductListPageInfoResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GproductListPageData_productListPage_data>? get data;
  int? get limit;
  int? get page;
  int? get totalPages;
  int? get totalRecords;
  static Serializer<GproductListPageData_productListPage> get serializer =>
      _$gproductListPageDataProductListPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductListPageData_productListPage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductListPageData_productListPage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductListPageData_productListPage.serializer,
        json,
      );
}

abstract class GproductListPageData_productListPage_data
    implements
        Built<GproductListPageData_productListPage_data,
            GproductListPageData_productListPage_dataBuilder> {
  GproductListPageData_productListPage_data._();

  factory GproductListPageData_productListPage_data(
      [void Function(GproductListPageData_productListPage_dataBuilder b)
          updates]) = _$GproductListPageData_productListPage_data;

  static void _initializeBuilder(
          GproductListPageData_productListPage_dataBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get code;
  double? get price;
  String? get id;
  static Serializer<GproductListPageData_productListPage_data> get serializer =>
      _$gproductListPageDataProductListPageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductListPageData_productListPage_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductListPageData_productListPage_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductListPageData_productListPage_data.serializer,
        json,
      );
}
