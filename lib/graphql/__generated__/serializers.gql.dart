// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql_test/graphql/__generated__/products.data.gql.dart'
    show
        GproductFindAllData,
        GproductFindAllData_productFindAll,
        GproductListPageData,
        GproductListPageData_productListPage,
        GproductListPageData_productListPage_data;
import 'package:graphql_test/graphql/__generated__/products.req.gql.dart'
    show GproductFindAllReq, GproductListPageReq;
import 'package:graphql_test/graphql/__generated__/products.var.gql.dart'
    show GproductFindAllVars, GproductListPageVars;
import 'package:graphql_test/graphql/__generated__/sales.data.gql.dart'
    show
        GsaleListPageData,
        GsaleListPageData_saleListPage,
        GsaleListPageData_saleListPage_data;
import 'package:graphql_test/graphql/__generated__/sales.req.gql.dart'
    show GsaleListPageReq;
import 'package:graphql_test/graphql/__generated__/sales.var.gql.dart'
    show GsaleListPageVars;
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    show
        GBrandInputDto,
        GCategoryInputDto,
        GDateTime,
        GFilterCriteriaInfo,
        GIFilterCriterion,
        GISortCriteria,
        GProductInputDto,
        GSaleDetailInputDto,
        GSaleInputDto,
        GUserInputDto;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBrandInputDto,
  GCategoryInputDto,
  GDateTime,
  GFilterCriteriaInfo,
  GIFilterCriterion,
  GISortCriteria,
  GProductInputDto,
  GSaleDetailInputDto,
  GSaleInputDto,
  GUserInputDto,
  GproductFindAllData,
  GproductFindAllData_productFindAll,
  GproductFindAllReq,
  GproductFindAllVars,
  GproductListPageData,
  GproductListPageData_productListPage,
  GproductListPageData_productListPage_data,
  GproductListPageReq,
  GproductListPageVars,
  GsaleListPageData,
  GsaleListPageData_saleListPage,
  GsaleListPageData_saleListPage_data,
  GsaleListPageReq,
  GsaleListPageVars,
])
final Serializers serializers = _serializersBuilder.build();
