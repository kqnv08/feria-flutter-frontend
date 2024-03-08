// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i2;

part 'products_page.var.gql.g.dart';

abstract class GCreateProductVars
    implements Built<GCreateProductVars, GCreateProductVarsBuilder> {
  GCreateProductVars._();

  factory GCreateProductVars(
          [void Function(GCreateProductVarsBuilder b) updates]) =
      _$GCreateProductVars;

  _i1.GProductInputDto get productInputDto;
  static Serializer<GCreateProductVars> get serializer =>
      _$gCreateProductVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateProductVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateProductVars.serializer,
        json,
      );
}

abstract class GUpdateProductVars
    implements Built<GUpdateProductVars, GUpdateProductVarsBuilder> {
  GUpdateProductVars._();

  factory GUpdateProductVars(
          [void Function(GUpdateProductVarsBuilder b) updates]) =
      _$GUpdateProductVars;

  String get id;
  _i1.GProductInputDto get productInputDto;
  static Serializer<GUpdateProductVars> get serializer =>
      _$gUpdateProductVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateProductVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateProductVars.serializer,
        json,
      );
}
