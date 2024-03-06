// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaleListPageData> _$gsaleListPageDataSerializer =
    new _$GsaleListPageDataSerializer();
Serializer<GsaleListPageData_saleListPage>
    _$gsaleListPageDataSaleListPageSerializer =
    new _$GsaleListPageData_saleListPageSerializer();
Serializer<GsaleListPageData_saleListPage_data>
    _$gsaleListPageDataSaleListPageDataSerializer =
    new _$GsaleListPageData_saleListPage_dataSerializer();
Serializer<GcreateSaleData> _$gcreateSaleDataSerializer =
    new _$GcreateSaleDataSerializer();
Serializer<GcreateSaleData_createSale> _$gcreateSaleDataCreateSaleSerializer =
    new _$GcreateSaleData_createSaleSerializer();

class _$GsaleListPageDataSerializer
    implements StructuredSerializer<GsaleListPageData> {
  @override
  final Iterable<Type> types = const [GsaleListPageData, _$GsaleListPageData];
  @override
  final String wireName = 'GsaleListPageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsaleListPageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'saleListPage',
      serializers.serialize(object.saleListPage,
          specifiedType: const FullType(GsaleListPageData_saleListPage)),
    ];

    return result;
  }

  @override
  GsaleListPageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaleListPageDataBuilder();

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
        case 'saleListPage':
          result.saleListPage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GsaleListPageData_saleListPage))!
              as GsaleListPageData_saleListPage);
          break;
      }
    }

    return result.build();
  }
}

class _$GsaleListPageData_saleListPageSerializer
    implements StructuredSerializer<GsaleListPageData_saleListPage> {
  @override
  final Iterable<Type> types = const [
    GsaleListPageData_saleListPage,
    _$GsaleListPageData_saleListPage
  ];
  @override
  final String wireName = 'GsaleListPageData_saleListPage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaleListPageData_saleListPage object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GsaleListPageData_saleListPage_data)])));
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
  GsaleListPageData_saleListPage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaleListPageData_saleListPageBuilder();

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
                const FullType(GsaleListPageData_saleListPage_data)
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

class _$GsaleListPageData_saleListPage_dataSerializer
    implements StructuredSerializer<GsaleListPageData_saleListPage_data> {
  @override
  final Iterable<Type> types = const [
    GsaleListPageData_saleListPage_data,
    _$GsaleListPageData_saleListPage_data
  ];
  @override
  final String wireName = 'GsaleListPageData_saleListPage_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaleListPageData_saleListPage_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    return result;
  }

  @override
  GsaleListPageData_saleListPage_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaleListPageData_saleListPage_dataBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateSaleDataSerializer
    implements StructuredSerializer<GcreateSaleData> {
  @override
  final Iterable<Type> types = const [GcreateSaleData, _$GcreateSaleData];
  @override
  final String wireName = 'GcreateSaleData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateSaleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createSale',
      serializers.serialize(object.createSale,
          specifiedType: const FullType(GcreateSaleData_createSale)),
    ];

    return result;
  }

  @override
  GcreateSaleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateSaleDataBuilder();

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
        case 'createSale':
          result.createSale.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GcreateSaleData_createSale))!
              as GcreateSaleData_createSale);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateSaleData_createSaleSerializer
    implements StructuredSerializer<GcreateSaleData_createSale> {
  @override
  final Iterable<Type> types = const [
    GcreateSaleData_createSale,
    _$GcreateSaleData_createSale
  ];
  @override
  final String wireName = 'GcreateSaleData_createSale';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateSaleData_createSale object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GcreateSaleData_createSale deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateSaleData_createSaleBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GsaleListPageData extends GsaleListPageData {
  @override
  final String G__typename;
  @override
  final GsaleListPageData_saleListPage saleListPage;

  factory _$GsaleListPageData(
          [void Function(GsaleListPageDataBuilder)? updates]) =>
      (new GsaleListPageDataBuilder()..update(updates))._build();

  _$GsaleListPageData._({required this.G__typename, required this.saleListPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsaleListPageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        saleListPage, r'GsaleListPageData', 'saleListPage');
  }

  @override
  GsaleListPageData rebuild(void Function(GsaleListPageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaleListPageDataBuilder toBuilder() =>
      new GsaleListPageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaleListPageData &&
        G__typename == other.G__typename &&
        saleListPage == other.saleListPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, saleListPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaleListPageData')
          ..add('G__typename', G__typename)
          ..add('saleListPage', saleListPage))
        .toString();
  }
}

class GsaleListPageDataBuilder
    implements Builder<GsaleListPageData, GsaleListPageDataBuilder> {
  _$GsaleListPageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GsaleListPageData_saleListPageBuilder? _saleListPage;
  GsaleListPageData_saleListPageBuilder get saleListPage =>
      _$this._saleListPage ??= new GsaleListPageData_saleListPageBuilder();
  set saleListPage(GsaleListPageData_saleListPageBuilder? saleListPage) =>
      _$this._saleListPage = saleListPage;

  GsaleListPageDataBuilder() {
    GsaleListPageData._initializeBuilder(this);
  }

  GsaleListPageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _saleListPage = $v.saleListPage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaleListPageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaleListPageData;
  }

  @override
  void update(void Function(GsaleListPageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaleListPageData build() => _build();

  _$GsaleListPageData _build() {
    _$GsaleListPageData _$result;
    try {
      _$result = _$v ??
          new _$GsaleListPageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GsaleListPageData', 'G__typename'),
              saleListPage: saleListPage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saleListPage';
        saleListPage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsaleListPageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsaleListPageData_saleListPage extends GsaleListPageData_saleListPage {
  @override
  final String G__typename;
  @override
  final BuiltList<GsaleListPageData_saleListPage_data>? data;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final int? totalPages;
  @override
  final int? totalRecords;

  factory _$GsaleListPageData_saleListPage(
          [void Function(GsaleListPageData_saleListPageBuilder)? updates]) =>
      (new GsaleListPageData_saleListPageBuilder()..update(updates))._build();

  _$GsaleListPageData_saleListPage._(
      {required this.G__typename,
      this.data,
      this.limit,
      this.page,
      this.totalPages,
      this.totalRecords})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsaleListPageData_saleListPage', 'G__typename');
  }

  @override
  GsaleListPageData_saleListPage rebuild(
          void Function(GsaleListPageData_saleListPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaleListPageData_saleListPageBuilder toBuilder() =>
      new GsaleListPageData_saleListPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaleListPageData_saleListPage &&
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
    return (newBuiltValueToStringHelper(r'GsaleListPageData_saleListPage')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('limit', limit)
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('totalRecords', totalRecords))
        .toString();
  }
}

class GsaleListPageData_saleListPageBuilder
    implements
        Builder<GsaleListPageData_saleListPage,
            GsaleListPageData_saleListPageBuilder> {
  _$GsaleListPageData_saleListPage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GsaleListPageData_saleListPage_data>? _data;
  ListBuilder<GsaleListPageData_saleListPage_data> get data =>
      _$this._data ??= new ListBuilder<GsaleListPageData_saleListPage_data>();
  set data(ListBuilder<GsaleListPageData_saleListPage_data>? data) =>
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

  GsaleListPageData_saleListPageBuilder() {
    GsaleListPageData_saleListPage._initializeBuilder(this);
  }

  GsaleListPageData_saleListPageBuilder get _$this {
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
  void replace(GsaleListPageData_saleListPage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaleListPageData_saleListPage;
  }

  @override
  void update(void Function(GsaleListPageData_saleListPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaleListPageData_saleListPage build() => _build();

  _$GsaleListPageData_saleListPage _build() {
    _$GsaleListPageData_saleListPage _$result;
    try {
      _$result = _$v ??
          new _$GsaleListPageData_saleListPage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GsaleListPageData_saleListPage', 'G__typename'),
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
            r'GsaleListPageData_saleListPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsaleListPageData_saleListPage_data
    extends GsaleListPageData_saleListPage_data {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final double total;
  @override
  final String? name;
  @override
  final _i2.GDateTime? createdAt;

  factory _$GsaleListPageData_saleListPage_data(
          [void Function(GsaleListPageData_saleListPage_dataBuilder)?
              updates]) =>
      (new GsaleListPageData_saleListPage_dataBuilder()..update(updates))
          ._build();

  _$GsaleListPageData_saleListPage_data._(
      {required this.G__typename,
      this.id,
      required this.total,
      this.name,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsaleListPageData_saleListPage_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GsaleListPageData_saleListPage_data', 'total');
  }

  @override
  GsaleListPageData_saleListPage_data rebuild(
          void Function(GsaleListPageData_saleListPage_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaleListPageData_saleListPage_dataBuilder toBuilder() =>
      new GsaleListPageData_saleListPage_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaleListPageData_saleListPage_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        total == other.total &&
        name == other.name &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaleListPageData_saleListPage_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('total', total)
          ..add('name', name)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GsaleListPageData_saleListPage_dataBuilder
    implements
        Builder<GsaleListPageData_saleListPage_data,
            GsaleListPageData_saleListPage_dataBuilder> {
  _$GsaleListPageData_saleListPage_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GsaleListPageData_saleListPage_dataBuilder() {
    GsaleListPageData_saleListPage_data._initializeBuilder(this);
  }

  GsaleListPageData_saleListPage_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _total = $v.total;
      _name = $v.name;
      _createdAt = $v.createdAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaleListPageData_saleListPage_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaleListPageData_saleListPage_data;
  }

  @override
  void update(
      void Function(GsaleListPageData_saleListPage_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaleListPageData_saleListPage_data build() => _build();

  _$GsaleListPageData_saleListPage_data _build() {
    _$GsaleListPageData_saleListPage_data _$result;
    try {
      _$result = _$v ??
          new _$GsaleListPageData_saleListPage_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GsaleListPageData_saleListPage_data', 'G__typename'),
              id: id,
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GsaleListPageData_saleListPage_data', 'total'),
              name: name,
              createdAt: _createdAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsaleListPageData_saleListPage_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateSaleData extends GcreateSaleData {
  @override
  final String G__typename;
  @override
  final GcreateSaleData_createSale createSale;

  factory _$GcreateSaleData([void Function(GcreateSaleDataBuilder)? updates]) =>
      (new GcreateSaleDataBuilder()..update(updates))._build();

  _$GcreateSaleData._({required this.G__typename, required this.createSale})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateSaleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createSale, r'GcreateSaleData', 'createSale');
  }

  @override
  GcreateSaleData rebuild(void Function(GcreateSaleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateSaleDataBuilder toBuilder() =>
      new GcreateSaleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateSaleData &&
        G__typename == other.G__typename &&
        createSale == other.createSale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createSale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateSaleData')
          ..add('G__typename', G__typename)
          ..add('createSale', createSale))
        .toString();
  }
}

class GcreateSaleDataBuilder
    implements Builder<GcreateSaleData, GcreateSaleDataBuilder> {
  _$GcreateSaleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreateSaleData_createSaleBuilder? _createSale;
  GcreateSaleData_createSaleBuilder get createSale =>
      _$this._createSale ??= new GcreateSaleData_createSaleBuilder();
  set createSale(GcreateSaleData_createSaleBuilder? createSale) =>
      _$this._createSale = createSale;

  GcreateSaleDataBuilder() {
    GcreateSaleData._initializeBuilder(this);
  }

  GcreateSaleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createSale = $v.createSale.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateSaleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateSaleData;
  }

  @override
  void update(void Function(GcreateSaleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateSaleData build() => _build();

  _$GcreateSaleData _build() {
    _$GcreateSaleData _$result;
    try {
      _$result = _$v ??
          new _$GcreateSaleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GcreateSaleData', 'G__typename'),
              createSale: createSale.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createSale';
        createSale.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateSaleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateSaleData_createSale extends GcreateSaleData_createSale {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GcreateSaleData_createSale(
          [void Function(GcreateSaleData_createSaleBuilder)? updates]) =>
      (new GcreateSaleData_createSaleBuilder()..update(updates))._build();

  _$GcreateSaleData_createSale._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateSaleData_createSale', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'GcreateSaleData_createSale', 'success');
  }

  @override
  GcreateSaleData_createSale rebuild(
          void Function(GcreateSaleData_createSaleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateSaleData_createSaleBuilder toBuilder() =>
      new GcreateSaleData_createSaleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateSaleData_createSale &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateSaleData_createSale')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GcreateSaleData_createSaleBuilder
    implements
        Builder<GcreateSaleData_createSale, GcreateSaleData_createSaleBuilder> {
  _$GcreateSaleData_createSale? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GcreateSaleData_createSaleBuilder() {
    GcreateSaleData_createSale._initializeBuilder(this);
  }

  GcreateSaleData_createSaleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateSaleData_createSale other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateSaleData_createSale;
  }

  @override
  void update(void Function(GcreateSaleData_createSaleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateSaleData_createSale build() => _build();

  _$GcreateSaleData_createSale _build() {
    final _$result = _$v ??
        new _$GcreateSaleData_createSale._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GcreateSaleData_createSale', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'GcreateSaleData_createSale', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
