// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_test/graphql/__generated__/sale_page.ast.gql.dart'
    as _i5;
import 'package:graphql_test/graphql/__generated__/sale_page.data.gql.dart'
    as _i2;
import 'package:graphql_test/graphql/__generated__/sale_page.var.gql.dart'
    as _i3;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i6;

part 'sale_page.req.gql.g.dart';

abstract class GSaleReq
    implements
        Built<GSaleReq, GSaleReqBuilder>,
        _i1.OperationRequest<_i2.GSaleData, _i3.GSaleVars> {
  GSaleReq._();

  factory GSaleReq([void Function(GSaleReqBuilder b) updates]) = _$GSaleReq;

  static void _initializeBuilder(GSaleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Sale',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaleVars get vars;
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
  _i2.GSaleData? Function(
    _i2.GSaleData?,
    _i2.GSaleData?,
  )? get updateResult;
  @override
  _i2.GSaleData? get optimisticResponse;
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
  _i2.GSaleData? parseData(Map<String, dynamic> json) =>
      _i2.GSaleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSaleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSaleData, _i3.GSaleVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSaleReq> get serializer => _$gSaleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaleReq.serializer,
        json,
      );
}
