// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'sales.data.gql.g.dart';

abstract class GsaleListPageData
    implements Built<GsaleListPageData, GsaleListPageDataBuilder> {
  GsaleListPageData._();

  factory GsaleListPageData(
          [void Function(GsaleListPageDataBuilder b) updates]) =
      _$GsaleListPageData;

  static void _initializeBuilder(GsaleListPageDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsaleListPageData_saleListPage get saleListPage;
  static Serializer<GsaleListPageData> get serializer =>
      _$gsaleListPageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaleListPageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaleListPageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaleListPageData.serializer,
        json,
      );
}

abstract class GsaleListPageData_saleListPage
    implements
        Built<GsaleListPageData_saleListPage,
            GsaleListPageData_saleListPageBuilder> {
  GsaleListPageData_saleListPage._();

  factory GsaleListPageData_saleListPage(
          [void Function(GsaleListPageData_saleListPageBuilder b) updates]) =
      _$GsaleListPageData_saleListPage;

  static void _initializeBuilder(GsaleListPageData_saleListPageBuilder b) =>
      b..G__typename = 'SaleListPageInfoResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GsaleListPageData_saleListPage_data>? get data;
  int? get limit;
  int? get page;
  int? get totalPages;
  int? get totalRecords;
  static Serializer<GsaleListPageData_saleListPage> get serializer =>
      _$gsaleListPageDataSaleListPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaleListPageData_saleListPage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaleListPageData_saleListPage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaleListPageData_saleListPage.serializer,
        json,
      );
}

abstract class GsaleListPageData_saleListPage_data
    implements
        Built<GsaleListPageData_saleListPage_data,
            GsaleListPageData_saleListPage_dataBuilder> {
  GsaleListPageData_saleListPage_data._();

  factory GsaleListPageData_saleListPage_data(
      [void Function(GsaleListPageData_saleListPage_dataBuilder b)
          updates]) = _$GsaleListPageData_saleListPage_data;

  static void _initializeBuilder(
          GsaleListPageData_saleListPage_dataBuilder b) =>
      b..G__typename = 'Sale';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  double get total;
  String? get name;
  _i2.GDateTime? get createdAt;
  static Serializer<GsaleListPageData_saleListPage_data> get serializer =>
      _$gsaleListPageDataSaleListPageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaleListPageData_saleListPage_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaleListPageData_saleListPage_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaleListPageData_saleListPage_data.serializer,
        json,
      );
}

abstract class GcreateSaleData
    implements Built<GcreateSaleData, GcreateSaleDataBuilder> {
  GcreateSaleData._();

  factory GcreateSaleData([void Function(GcreateSaleDataBuilder b) updates]) =
      _$GcreateSaleData;

  static void _initializeBuilder(GcreateSaleDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateSaleData_createSale get createSale;
  static Serializer<GcreateSaleData> get serializer =>
      _$gcreateSaleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateSaleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateSaleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateSaleData.serializer,
        json,
      );
}

abstract class GcreateSaleData_createSale
    implements
        Built<GcreateSaleData_createSale, GcreateSaleData_createSaleBuilder> {
  GcreateSaleData_createSale._();

  factory GcreateSaleData_createSale(
          [void Function(GcreateSaleData_createSaleBuilder b) updates]) =
      _$GcreateSaleData_createSale;

  static void _initializeBuilder(GcreateSaleData_createSaleBuilder b) =>
      b..G__typename = 'GenericResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<GcreateSaleData_createSale> get serializer =>
      _$gcreateSaleDataCreateSaleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateSaleData_createSale.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateSaleData_createSale? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateSaleData_createSale.serializer,
        json,
      );
}
