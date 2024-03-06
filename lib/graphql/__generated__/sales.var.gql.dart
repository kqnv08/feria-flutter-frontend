// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i2;

part 'sales.var.gql.g.dart';

abstract class GsaleListPageVars
    implements Built<GsaleListPageVars, GsaleListPageVarsBuilder> {
  GsaleListPageVars._();

  factory GsaleListPageVars(
          [void Function(GsaleListPageVarsBuilder b) updates]) =
      _$GsaleListPageVars;

  _i1.GFilterCriteriaInfo get saleCriteria;
  static Serializer<GsaleListPageVars> get serializer =>
      _$gsaleListPageVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GsaleListPageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaleListPageVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GsaleListPageVars.serializer,
        json,
      );
}

abstract class GcreateSaleVars
    implements Built<GcreateSaleVars, GcreateSaleVarsBuilder> {
  GcreateSaleVars._();

  factory GcreateSaleVars([void Function(GcreateSaleVarsBuilder b) updates]) =
      _$GcreateSaleVars;

  _i1.GNewSaleInputDto get saleInputDto;
  static Serializer<GcreateSaleVars> get serializer =>
      _$gcreateSaleVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GcreateSaleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateSaleVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GcreateSaleVars.serializer,
        json,
      );
}
