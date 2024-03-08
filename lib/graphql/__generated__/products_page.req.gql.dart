// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_test/graphql/__generated__/products_page.ast.gql.dart'
    as _i5;
import 'package:graphql_test/graphql/__generated__/products_page.data.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/products_page.var.gql.dart'
    as _i3;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i6;

part 'products_page.req.gql.g.dart';

abstract class GCreateProductReq
    implements
        Built<GCreateProductReq, GCreateProductReqBuilder>,
        _i1.OperationRequest<_i2.GCreateProductData, _i3.GCreateProductVars> {
  GCreateProductReq._();

  factory GCreateProductReq(
          [void Function(GCreateProductReqBuilder b) updates]) =
      _$GCreateProductReq;

  static void _initializeBuilder(GCreateProductReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateProduct',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateProductVars get vars;
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
  _i2.GCreateProductData? Function(
    _i2.GCreateProductData?,
    _i2.GCreateProductData?,
  )? get updateResult;
  @override
  _i2.GCreateProductData? get optimisticResponse;
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
  _i2.GCreateProductData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateProductData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateProductData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateProductData, _i3.GCreateProductVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateProductReq> get serializer =>
      _$gCreateProductReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateProductReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateProductReq.serializer,
        json,
      );
}

abstract class GUpdateProductReq
    implements
        Built<GUpdateProductReq, GUpdateProductReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateProductData, _i3.GUpdateProductVars> {
  GUpdateProductReq._();

  factory GUpdateProductReq(
          [void Function(GUpdateProductReqBuilder b) updates]) =
      _$GUpdateProductReq;

  static void _initializeBuilder(GUpdateProductReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateProduct',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateProductVars get vars;
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
  _i2.GUpdateProductData? Function(
    _i2.GUpdateProductData?,
    _i2.GUpdateProductData?,
  )? get updateResult;
  @override
  _i2.GUpdateProductData? get optimisticResponse;
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
  _i2.GUpdateProductData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateProductData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateProductData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateProductData, _i3.GUpdateProductVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateProductReq> get serializer =>
      _$gUpdateProductReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateProductReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateProductReq.serializer,
        json,
      );
}
