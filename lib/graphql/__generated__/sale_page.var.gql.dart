// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'sale_page.var.gql.g.dart';

abstract class GSaleVars implements Built<GSaleVars, GSaleVarsBuilder> {
  GSaleVars._();

  factory GSaleVars([void Function(GSaleVarsBuilder b) updates]) = _$GSaleVars;

  String get saleId;
  static Serializer<GSaleVars> get serializer => _$gSaleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleVars.serializer,
        json,
      );
}
