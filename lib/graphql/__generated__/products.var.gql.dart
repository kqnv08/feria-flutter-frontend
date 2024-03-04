// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'products.var.gql.g.dart';

abstract class GproductFindAllVars
    implements Built<GproductFindAllVars, GproductFindAllVarsBuilder> {
  GproductFindAllVars._();

  factory GproductFindAllVars(
          [void Function(GproductFindAllVarsBuilder b) updates]) =
      _$GproductFindAllVars;

  static Serializer<GproductFindAllVars> get serializer =>
      _$gproductFindAllVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductFindAllVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductFindAllVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductFindAllVars.serializer,
        json,
      );
}

abstract class GproductListPageVars
    implements Built<GproductListPageVars, GproductListPageVarsBuilder> {
  GproductListPageVars._();

  factory GproductListPageVars(
          [void Function(GproductListPageVarsBuilder b) updates]) =
      _$GproductListPageVars;

  _i2.GFilterCriteriaInfo get filterCriteria;
  static Serializer<GproductListPageVars> get serializer =>
      _$gproductListPageVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GproductListPageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductListPageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GproductListPageVars.serializer,
        json,
      );
}
