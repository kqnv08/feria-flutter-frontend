// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_test/graphql/__generated__/sales.ast.gql.dart' as _i5;
import 'package:graphql_test/graphql/__generated__/sales.data.gql.dart' as _i2;
import 'package:graphql_test/graphql/__generated__/sales.var.gql.dart' as _i3;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i6;

part 'sales.req.gql.g.dart';

abstract class GsaleListPageReq
    implements
        Built<GsaleListPageReq, GsaleListPageReqBuilder>,
        _i1.OperationRequest<_i2.GsaleListPageData, _i3.GsaleListPageVars> {
  GsaleListPageReq._();

  factory GsaleListPageReq([void Function(GsaleListPageReqBuilder b) updates]) =
      _$GsaleListPageReq;

  static void _initializeBuilder(GsaleListPageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'saleListPage',
    )
    ..executeOnListen = true;

  @override
  _i3.GsaleListPageVars get vars;
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
  _i2.GsaleListPageData? Function(
    _i2.GsaleListPageData?,
    _i2.GsaleListPageData?,
  )? get updateResult;
  @override
  _i2.GsaleListPageData? get optimisticResponse;
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
  _i2.GsaleListPageData? parseData(Map<String, dynamic> json) =>
      _i2.GsaleListPageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsaleListPageData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsaleListPageData, _i3.GsaleListPageVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsaleListPageReq> get serializer =>
      _$gsaleListPageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsaleListPageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaleListPageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsaleListPageReq.serializer,
        json,
      );
}

abstract class GcreateSaleReq
    implements
        Built<GcreateSaleReq, GcreateSaleReqBuilder>,
        _i1.OperationRequest<_i2.GcreateSaleData, _i3.GcreateSaleVars> {
  GcreateSaleReq._();

  factory GcreateSaleReq([void Function(GcreateSaleReqBuilder b) updates]) =
      _$GcreateSaleReq;

  static void _initializeBuilder(GcreateSaleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'createSale',
    )
    ..executeOnListen = true;

  @override
  _i3.GcreateSaleVars get vars;
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
  _i2.GcreateSaleData? Function(
    _i2.GcreateSaleData?,
    _i2.GcreateSaleData?,
  )? get updateResult;
  @override
  _i2.GcreateSaleData? get optimisticResponse;
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
  _i2.GcreateSaleData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateSaleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcreateSaleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcreateSaleData, _i3.GcreateSaleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcreateSaleReq> get serializer =>
      _$gcreateSaleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcreateSaleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateSaleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcreateSaleReq.serializer,
        json,
      );
}
