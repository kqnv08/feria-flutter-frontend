// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GBrandInputDto
    implements Built<GBrandInputDto, GBrandInputDtoBuilder> {
  GBrandInputDto._();

  factory GBrandInputDto([void Function(GBrandInputDtoBuilder b) updates]) =
      _$GBrandInputDto;

  bool? get enabled;
  String get key;
  String? get value;
  static Serializer<GBrandInputDto> get serializer =>
      _$gBrandInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBrandInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBrandInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBrandInputDto.serializer,
        json,
      );
}

abstract class GCategoryInputDto
    implements Built<GCategoryInputDto, GCategoryInputDtoBuilder> {
  GCategoryInputDto._();

  factory GCategoryInputDto(
          [void Function(GCategoryInputDtoBuilder b) updates]) =
      _$GCategoryInputDto;

  String get name;
  static Serializer<GCategoryInputDto> get serializer =>
      _$gCategoryInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCategoryInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCategoryInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCategoryInputDto.serializer,
        json,
      );
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GFilterCriteriaInfo
    implements Built<GFilterCriteriaInfo, GFilterCriteriaInfoBuilder> {
  GFilterCriteriaInfo._();

  factory GFilterCriteriaInfo(
          [void Function(GFilterCriteriaInfoBuilder b) updates]) =
      _$GFilterCriteriaInfo;

  GIFilterCriterion? get filter;
  int? get limit;
  int? get page;
  GISortCriteria? get sort;
  static Serializer<GFilterCriteriaInfo> get serializer =>
      _$gFilterCriteriaInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterCriteriaInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterCriteriaInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterCriteriaInfo.serializer,
        json,
      );
}

abstract class GIFilterCriterion
    implements Built<GIFilterCriterion, GIFilterCriterionBuilder> {
  GIFilterCriterion._();

  factory GIFilterCriterion(
          [void Function(GIFilterCriterionBuilder b) updates]) =
      _$GIFilterCriterion;

  BuiltList<GIFilterCriterion>? get filters;
  String? get property;
  String? get type;
  String? get typeValue;
  String? get value;
  static Serializer<GIFilterCriterion> get serializer =>
      _$gIFilterCriterionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIFilterCriterion.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIFilterCriterion? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIFilterCriterion.serializer,
        json,
      );
}

abstract class GISortCriteria
    implements Built<GISortCriteria, GISortCriteriaBuilder> {
  GISortCriteria._();

  factory GISortCriteria([void Function(GISortCriteriaBuilder b) updates]) =
      _$GISortCriteria;

  String get column;
  String get order;
  static Serializer<GISortCriteria> get serializer =>
      _$gISortCriteriaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GISortCriteria.serializer,
        this,
      ) as Map<String, dynamic>);

  static GISortCriteria? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GISortCriteria.serializer,
        json,
      );
}

abstract class GNewSaleInputDto
    implements Built<GNewSaleInputDto, GNewSaleInputDtoBuilder> {
  GNewSaleInputDto._();

  factory GNewSaleInputDto([void Function(GNewSaleInputDtoBuilder b) updates]) =
      _$GNewSaleInputDto;

  BuiltList<GSaleDetailInputDto> get saleDetails;
  static Serializer<GNewSaleInputDto> get serializer =>
      _$gNewSaleInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewSaleInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewSaleInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewSaleInputDto.serializer,
        json,
      );
}

abstract class GProductInputDto
    implements Built<GProductInputDto, GProductInputDtoBuilder> {
  GProductInputDto._();

  factory GProductInputDto([void Function(GProductInputDtoBuilder b) updates]) =
      _$GProductInputDto;

  String? get code;
  String? get name;
  double? get price;
  static Serializer<GProductInputDto> get serializer =>
      _$gProductInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductInputDto.serializer,
        json,
      );
}

abstract class GSaleDetailInputDto
    implements Built<GSaleDetailInputDto, GSaleDetailInputDtoBuilder> {
  GSaleDetailInputDto._();

  factory GSaleDetailInputDto(
          [void Function(GSaleDetailInputDtoBuilder b) updates]) =
      _$GSaleDetailInputDto;

  double get price;
  String get productId;
  int get quantity;
  String? get saleId;
  static Serializer<GSaleDetailInputDto> get serializer =>
      _$gSaleDetailInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleDetailInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleDetailInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleDetailInputDto.serializer,
        json,
      );
}

abstract class GSaleInputDto
    implements Built<GSaleInputDto, GSaleInputDtoBuilder> {
  GSaleInputDto._();

  factory GSaleInputDto([void Function(GSaleInputDtoBuilder b) updates]) =
      _$GSaleInputDto;

  String get name;
  static Serializer<GSaleInputDto> get serializer => _$gSaleInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaleInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaleInputDto.serializer,
        json,
      );
}

abstract class GUserInputDto
    implements Built<GUserInputDto, GUserInputDtoBuilder> {
  GUserInputDto._();

  factory GUserInputDto([void Function(GUserInputDtoBuilder b) updates]) =
      _$GUserInputDto;

  bool? get active;
  String get email;
  bool? get enabled;
  String? get firstName;
  String? get lastName;
  String? get password;
  String get roleId;
  static Serializer<GUserInputDto> get serializer => _$gUserInputDtoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserInputDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserInputDto? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserInputDto.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
