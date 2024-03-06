// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GproductFindAllData> _$gproductFindAllDataSerializer =
    new _$GproductFindAllDataSerializer();
Serializer<GproductFindAllData_productFindAll>
    _$gproductFindAllDataProductFindAllSerializer =
    new _$GproductFindAllData_productFindAllSerializer();
Serializer<GproductListPageData> _$gproductListPageDataSerializer =
    new _$GproductListPageDataSerializer();
Serializer<GproductListPageData_productListPage>
    _$gproductListPageDataProductListPageSerializer =
    new _$GproductListPageData_productListPageSerializer();
Serializer<GproductListPageData_productListPage_data>
    _$gproductListPageDataProductListPageDataSerializer =
    new _$GproductListPageData_productListPage_dataSerializer();

class _$GproductFindAllDataSerializer
    implements StructuredSerializer<GproductFindAllData> {
  @override
  final Iterable<Type> types = const [
    GproductFindAllData,
    _$GproductFindAllData
  ];
  @override
  final String wireName = 'GproductFindAllData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductFindAllData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'productFindAll',
      serializers.serialize(object.productFindAll,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GproductFindAllData_productFindAll)])),
    ];

    return result;
  }

  @override
  GproductFindAllData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductFindAllDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'productFindAll':
          result.productFindAll.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GproductFindAllData_productFindAll)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GproductFindAllData_productFindAllSerializer
    implements StructuredSerializer<GproductFindAllData_productFindAll> {
  @override
  final Iterable<Type> types = const [
    GproductFindAllData_productFindAll,
    _$GproductFindAllData_productFindAll
  ];
  @override
  final String wireName = 'GproductFindAllData_productFindAll';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductFindAllData_productFindAll object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GproductFindAllData_productFindAll deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductFindAllData_productFindAllBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GproductListPageDataSerializer
    implements StructuredSerializer<GproductListPageData> {
  @override
  final Iterable<Type> types = const [
    GproductListPageData,
    _$GproductListPageData
  ];
  @override
  final String wireName = 'GproductListPageData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductListPageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'productListPage',
      serializers.serialize(object.productListPage,
          specifiedType: const FullType(GproductListPageData_productListPage)),
    ];

    return result;
  }

  @override
  GproductListPageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductListPageDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'productListPage':
          result.productListPage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GproductListPageData_productListPage))!
              as GproductListPageData_productListPage);
          break;
      }
    }

    return result.build();
  }
}

class _$GproductListPageData_productListPageSerializer
    implements StructuredSerializer<GproductListPageData_productListPage> {
  @override
  final Iterable<Type> types = const [
    GproductListPageData_productListPage,
    _$GproductListPageData_productListPage
  ];
  @override
  final String wireName = 'GproductListPageData_productListPage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductListPageData_productListPage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GproductListPageData_productListPage_data)
            ])));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPages;
    if (value != null) {
      result
        ..add('totalPages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalRecords;
    if (value != null) {
      result
        ..add('totalRecords')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GproductListPageData_productListPage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductListPageData_productListPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GproductListPageData_productListPage_data)
              ]))! as BuiltList<Object?>);
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalPages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalRecords':
          result.totalRecords = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GproductListPageData_productListPage_dataSerializer
    implements StructuredSerializer<GproductListPageData_productListPage_data> {
  @override
  final Iterable<Type> types = const [
    GproductListPageData_productListPage_data,
    _$GproductListPageData_productListPage_data
  ];
  @override
  final String wireName = 'GproductListPageData_productListPage_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductListPageData_productListPage_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GproductListPageData_productListPage_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductListPageData_productListPage_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GproductFindAllData extends GproductFindAllData {
  @override
  final String G__typename;
  @override
  final BuiltList<GproductFindAllData_productFindAll> productFindAll;

  factory _$GproductFindAllData(
          [void Function(GproductFindAllDataBuilder)? updates]) =>
      (new GproductFindAllDataBuilder()..update(updates))._build();

  _$GproductFindAllData._(
      {required this.G__typename, required this.productFindAll})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GproductFindAllData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        productFindAll, r'GproductFindAllData', 'productFindAll');
  }

  @override
  GproductFindAllData rebuild(
          void Function(GproductFindAllDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductFindAllDataBuilder toBuilder() =>
      new GproductFindAllDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductFindAllData &&
        G__typename == other.G__typename &&
        productFindAll == other.productFindAll;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, productFindAll.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GproductFindAllData')
          ..add('G__typename', G__typename)
          ..add('productFindAll', productFindAll))
        .toString();
  }
}

class GproductFindAllDataBuilder
    implements Builder<GproductFindAllData, GproductFindAllDataBuilder> {
  _$GproductFindAllData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GproductFindAllData_productFindAll>? _productFindAll;
  ListBuilder<GproductFindAllData_productFindAll> get productFindAll =>
      _$this._productFindAll ??=
          new ListBuilder<GproductFindAllData_productFindAll>();
  set productFindAll(
          ListBuilder<GproductFindAllData_productFindAll>? productFindAll) =>
      _$this._productFindAll = productFindAll;

  GproductFindAllDataBuilder() {
    GproductFindAllData._initializeBuilder(this);
  }

  GproductFindAllDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _productFindAll = $v.productFindAll.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductFindAllData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductFindAllData;
  }

  @override
  void update(void Function(GproductFindAllDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductFindAllData build() => _build();

  _$GproductFindAllData _build() {
    _$GproductFindAllData _$result;
    try {
      _$result = _$v ??
          new _$GproductFindAllData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GproductFindAllData', 'G__typename'),
              productFindAll: productFindAll.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productFindAll';
        productFindAll.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GproductFindAllData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GproductFindAllData_productFindAll
    extends GproductFindAllData_productFindAll {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String name;
  @override
  final double? price;
  @override
  final String? code;

  factory _$GproductFindAllData_productFindAll(
          [void Function(GproductFindAllData_productFindAllBuilder)?
              updates]) =>
      (new GproductFindAllData_productFindAllBuilder()..update(updates))
          ._build();

  _$GproductFindAllData_productFindAll._(
      {required this.G__typename,
      this.id,
      required this.name,
      this.price,
      this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GproductFindAllData_productFindAll', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GproductFindAllData_productFindAll', 'name');
  }

  @override
  GproductFindAllData_productFindAll rebuild(
          void Function(GproductFindAllData_productFindAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductFindAllData_productFindAllBuilder toBuilder() =>
      new GproductFindAllData_productFindAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductFindAllData_productFindAll &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GproductFindAllData_productFindAll')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('code', code))
        .toString();
  }
}

class GproductFindAllData_productFindAllBuilder
    implements
        Builder<GproductFindAllData_productFindAll,
            GproductFindAllData_productFindAllBuilder> {
  _$GproductFindAllData_productFindAll? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GproductFindAllData_productFindAllBuilder() {
    GproductFindAllData_productFindAll._initializeBuilder(this);
  }

  GproductFindAllData_productFindAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductFindAllData_productFindAll other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductFindAllData_productFindAll;
  }

  @override
  void update(
      void Function(GproductFindAllData_productFindAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductFindAllData_productFindAll build() => _build();

  _$GproductFindAllData_productFindAll _build() {
    final _$result = _$v ??
        new _$GproductFindAllData_productFindAll._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GproductFindAllData_productFindAll', 'G__typename'),
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GproductFindAllData_productFindAll', 'name'),
            price: price,
            code: code);
    replace(_$result);
    return _$result;
  }
}

class _$GproductListPageData extends GproductListPageData {
  @override
  final String G__typename;
  @override
  final GproductListPageData_productListPage productListPage;

  factory _$GproductListPageData(
          [void Function(GproductListPageDataBuilder)? updates]) =>
      (new GproductListPageDataBuilder()..update(updates))._build();

  _$GproductListPageData._(
      {required this.G__typename, required this.productListPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GproductListPageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        productListPage, r'GproductListPageData', 'productListPage');
  }

  @override
  GproductListPageData rebuild(
          void Function(GproductListPageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductListPageDataBuilder toBuilder() =>
      new GproductListPageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductListPageData &&
        G__typename == other.G__typename &&
        productListPage == other.productListPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, productListPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GproductListPageData')
          ..add('G__typename', G__typename)
          ..add('productListPage', productListPage))
        .toString();
  }
}

class GproductListPageDataBuilder
    implements Builder<GproductListPageData, GproductListPageDataBuilder> {
  _$GproductListPageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GproductListPageData_productListPageBuilder? _productListPage;
  GproductListPageData_productListPageBuilder get productListPage =>
      _$this._productListPage ??=
          new GproductListPageData_productListPageBuilder();
  set productListPage(
          GproductListPageData_productListPageBuilder? productListPage) =>
      _$this._productListPage = productListPage;

  GproductListPageDataBuilder() {
    GproductListPageData._initializeBuilder(this);
  }

  GproductListPageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _productListPage = $v.productListPage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductListPageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductListPageData;
  }

  @override
  void update(void Function(GproductListPageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductListPageData build() => _build();

  _$GproductListPageData _build() {
    _$GproductListPageData _$result;
    try {
      _$result = _$v ??
          new _$GproductListPageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GproductListPageData', 'G__typename'),
              productListPage: productListPage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productListPage';
        productListPage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GproductListPageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GproductListPageData_productListPage
    extends GproductListPageData_productListPage {
  @override
  final String G__typename;
  @override
  final BuiltList<GproductListPageData_productListPage_data>? data;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final int? totalPages;
  @override
  final int? totalRecords;

  factory _$GproductListPageData_productListPage(
          [void Function(GproductListPageData_productListPageBuilder)?
              updates]) =>
      (new GproductListPageData_productListPageBuilder()..update(updates))
          ._build();

  _$GproductListPageData_productListPage._(
      {required this.G__typename,
      this.data,
      this.limit,
      this.page,
      this.totalPages,
      this.totalRecords})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GproductListPageData_productListPage', 'G__typename');
  }

  @override
  GproductListPageData_productListPage rebuild(
          void Function(GproductListPageData_productListPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductListPageData_productListPageBuilder toBuilder() =>
      new GproductListPageData_productListPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductListPageData_productListPage &&
        G__typename == other.G__typename &&
        data == other.data &&
        limit == other.limit &&
        page == other.page &&
        totalPages == other.totalPages &&
        totalRecords == other.totalRecords;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalRecords.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GproductListPageData_productListPage')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('limit', limit)
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('totalRecords', totalRecords))
        .toString();
  }
}

class GproductListPageData_productListPageBuilder
    implements
        Builder<GproductListPageData_productListPage,
            GproductListPageData_productListPageBuilder> {
  _$GproductListPageData_productListPage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GproductListPageData_productListPage_data>? _data;
  ListBuilder<GproductListPageData_productListPage_data> get data =>
      _$this._data ??=
          new ListBuilder<GproductListPageData_productListPage_data>();
  set data(ListBuilder<GproductListPageData_productListPage_data>? data) =>
      _$this._data = data;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalRecords;
  int? get totalRecords => _$this._totalRecords;
  set totalRecords(int? totalRecords) => _$this._totalRecords = totalRecords;

  GproductListPageData_productListPageBuilder() {
    GproductListPageData_productListPage._initializeBuilder(this);
  }

  GproductListPageData_productListPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _limit = $v.limit;
      _page = $v.page;
      _totalPages = $v.totalPages;
      _totalRecords = $v.totalRecords;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductListPageData_productListPage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductListPageData_productListPage;
  }

  @override
  void update(
      void Function(GproductListPageData_productListPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductListPageData_productListPage build() => _build();

  _$GproductListPageData_productListPage _build() {
    _$GproductListPageData_productListPage _$result;
    try {
      _$result = _$v ??
          new _$GproductListPageData_productListPage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GproductListPageData_productListPage', 'G__typename'),
              data: _data?.build(),
              limit: limit,
              page: page,
              totalPages: totalPages,
              totalRecords: totalRecords);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GproductListPageData_productListPage',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GproductListPageData_productListPage_data
    extends GproductListPageData_productListPage_data {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? code;
  @override
  final double? price;
  @override
  final String? id;

  factory _$GproductListPageData_productListPage_data(
          [void Function(GproductListPageData_productListPage_dataBuilder)?
              updates]) =>
      (new GproductListPageData_productListPage_dataBuilder()..update(updates))
          ._build();

  _$GproductListPageData_productListPage_data._(
      {required this.G__typename,
      required this.name,
      this.code,
      this.price,
      this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GproductListPageData_productListPage_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GproductListPageData_productListPage_data', 'name');
  }

  @override
  GproductListPageData_productListPage_data rebuild(
          void Function(GproductListPageData_productListPage_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductListPageData_productListPage_dataBuilder toBuilder() =>
      new GproductListPageData_productListPage_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductListPageData_productListPage_data &&
        G__typename == other.G__typename &&
        name == other.name &&
        code == other.code &&
        price == other.price &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GproductListPageData_productListPage_data')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('code', code)
          ..add('price', price)
          ..add('id', id))
        .toString();
  }
}

class GproductListPageData_productListPage_dataBuilder
    implements
        Builder<GproductListPageData_productListPage_data,
            GproductListPageData_productListPage_dataBuilder> {
  _$GproductListPageData_productListPage_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GproductListPageData_productListPage_dataBuilder() {
    GproductListPageData_productListPage_data._initializeBuilder(this);
  }

  GproductListPageData_productListPage_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _code = $v.code;
      _price = $v.price;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductListPageData_productListPage_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductListPageData_productListPage_data;
  }

  @override
  void update(
      void Function(GproductListPageData_productListPage_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductListPageData_productListPage_data build() => _build();

  _$GproductListPageData_productListPage_data _build() {
    final _$result = _$v ??
        new _$GproductListPageData_productListPage_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GproductListPageData_productListPage_data', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GproductListPageData_productListPage_data', 'name'),
            code: code,
            price: price,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
