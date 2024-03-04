// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_test/graphql/__generated__/products.ast.gql.dart'
    as _i5;
import 'package:graphql_test/graphql/__generated__/products.data.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/products.var.gql.dart'
    as _i3;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i6;

part 'products.req.gql.g.dart';

abstract class GproductFindAllReq
    implements
        Built<GproductFindAllReq, GproductFindAllReqBuilder>,
        _i1.OperationRequest<_i2.GproductFindAllData, _i3.GproductFindAllVars> {
  GproductFindAllReq._();

  factory GproductFindAllReq(
          [void Function(GproductFindAllReqBuilder b) updates]) =
      _$GproductFindAllReq;

  static void _initializeBuilder(GproductFindAllReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'productFindAll',
    )
    ..executeOnListen = true;

  @override
  _i3.GproductFindAllVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GproductFindAllData? Function(
    _i2.GproductFindAllData?,
    _i2.GproductFindAllData?,
  )? get updateResult;
  @override
  _i2.GproductFindAllData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GproductFindAllData? parseData(Map<String, dynamic> json) =>
      _i2.GproductFindAllData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GproductFindAllData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GproductFindAllData, _i3.GproductFindAllVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GproductFindAllReq> get serializer =>
      _$gproductFindAllReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GproductFindAllReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductFindAllReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GproductFindAllReq.serializer,
        json,
      );
}

abstract class GproductListPageReq
    implements
        Built<GproductListPageReq, GproductListPageReqBuilder>,
        _i1
        .OperationRequest<_i2.GproductListPageData, _i3.GproductListPageVars> {
  GproductListPageReq._();

  factory GproductListPageReq(
          [void Function(GproductListPageReqBuilder b) updates]) =
      _$GproductListPageReq;

  static void _initializeBuilder(GproductListPageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'productListPage',
    )
    ..executeOnListen = true;

  @override
  _i3.GproductListPageVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GproductListPageData? Function(
    _i2.GproductListPageData?,
    _i2.GproductListPageData?,
  )? get updateResult;
  @override
  _i2.GproductListPageData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GproductListPageData? parseData(Map<String, dynamic> json) =>
      _i2.GproductListPageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GproductListPageData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GproductListPageData, _i3.GproductListPageVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GproductListPageReq> get serializer =>
      _$gproductListPageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GproductListPageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GproductListPageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GproductListPageReq.serializer,
        json,
      );
}
