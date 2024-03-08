// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_page.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateProductData> _$gCreateProductDataSerializer =
    new _$GCreateProductDataSerializer();
Serializer<GCreateProductData_createProduct>
    _$gCreateProductDataCreateProductSerializer =
    new _$GCreateProductData_createProductSerializer();
Serializer<GUpdateProductData> _$gUpdateProductDataSerializer =
    new _$GUpdateProductDataSerializer();
Serializer<GUpdateProductData_updateProduct>
    _$gUpdateProductDataUpdateProductSerializer =
    new _$GUpdateProductData_updateProductSerializer();

class _$GCreateProductDataSerializer
    implements StructuredSerializer<GCreateProductData> {
  @override
  final Iterable<Type> types = const [GCreateProductData, _$GCreateProductData];
  @override
  final String wireName = 'GCreateProductData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createProduct',
      serializers.serialize(object.createProduct,
          specifiedType: const FullType(GCreateProductData_createProduct)),
    ];

    return result;
  }

  @override
  GCreateProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateProductDataBuilder();

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
        case 'createProduct':
          result.createProduct.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateProductData_createProduct))!
              as GCreateProductData_createProduct);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateProductData_createProductSerializer
    implements StructuredSerializer<GCreateProductData_createProduct> {
  @override
  final Iterable<Type> types = const [
    GCreateProductData_createProduct,
    _$GCreateProductData_createProduct
  ];
  @override
  final String wireName = 'GCreateProductData_createProduct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateProductData_createProduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GCreateProductData_createProduct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateProductData_createProductBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUpdateProductDataSerializer
    implements StructuredSerializer<GUpdateProductData> {
  @override
  final Iterable<Type> types = const [GUpdateProductData, _$GUpdateProductData];
  @override
  final String wireName = 'GUpdateProductData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateProduct',
      serializers.serialize(object.updateProduct,
          specifiedType: const FullType(GUpdateProductData_updateProduct)),
    ];

    return result;
  }

  @override
  GUpdateProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProductDataBuilder();

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
        case 'updateProduct':
          result.updateProduct.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateProductData_updateProduct))!
              as GUpdateProductData_updateProduct);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProductData_updateProductSerializer
    implements StructuredSerializer<GUpdateProductData_updateProduct> {
  @override
  final Iterable<Type> types = const [
    GUpdateProductData_updateProduct,
    _$GUpdateProductData_updateProduct
  ];
  @override
  final String wireName = 'GUpdateProductData_updateProduct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProductData_updateProduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GUpdateProductData_updateProduct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProductData_updateProductBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCreateProductData extends GCreateProductData {
  @override
  final String G__typename;
  @override
  final GCreateProductData_createProduct createProduct;

  factory _$GCreateProductData(
          [void Function(GCreateProductDataBuilder)? updates]) =>
      (new GCreateProductDataBuilder()..update(updates))._build();

  _$GCreateProductData._(
      {required this.G__typename, required this.createProduct})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateProductData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createProduct, r'GCreateProductData', 'createProduct');
  }

  @override
  GCreateProductData rebuild(
          void Function(GCreateProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateProductDataBuilder toBuilder() =>
      new GCreateProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateProductData &&
        G__typename == other.G__typename &&
        createProduct == other.createProduct;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createProduct.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateProductData')
          ..add('G__typename', G__typename)
          ..add('createProduct', createProduct))
        .toString();
  }
}

class GCreateProductDataBuilder
    implements Builder<GCreateProductData, GCreateProductDataBuilder> {
  _$GCreateProductData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateProductData_createProductBuilder? _createProduct;
  GCreateProductData_createProductBuilder get createProduct =>
      _$this._createProduct ??= new GCreateProductData_createProductBuilder();
  set createProduct(GCreateProductData_createProductBuilder? createProduct) =>
      _$this._createProduct = createProduct;

  GCreateProductDataBuilder() {
    GCreateProductData._initializeBuilder(this);
  }

  GCreateProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createProduct = $v.createProduct.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateProductData;
  }

  @override
  void update(void Function(GCreateProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateProductData build() => _build();

  _$GCreateProductData _build() {
    _$GCreateProductData _$result;
    try {
      _$result = _$v ??
          new _$GCreateProductData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateProductData', 'G__typename'),
              createProduct: createProduct.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createProduct';
        createProduct.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateProductData_createProduct
    extends GCreateProductData_createProduct {
  @override
  final String G__typename;
  @override
  final String? id;

  factory _$GCreateProductData_createProduct(
          [void Function(GCreateProductData_createProductBuilder)? updates]) =>
      (new GCreateProductData_createProductBuilder()..update(updates))._build();

  _$GCreateProductData_createProduct._({required this.G__typename, this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateProductData_createProduct', 'G__typename');
  }

  @override
  GCreateProductData_createProduct rebuild(
          void Function(GCreateProductData_createProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateProductData_createProductBuilder toBuilder() =>
      new GCreateProductData_createProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateProductData_createProduct &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateProductData_createProduct')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateProductData_createProductBuilder
    implements
        Builder<GCreateProductData_createProduct,
            GCreateProductData_createProductBuilder> {
  _$GCreateProductData_createProduct? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateProductData_createProductBuilder() {
    GCreateProductData_createProduct._initializeBuilder(this);
  }

  GCreateProductData_createProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateProductData_createProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateProductData_createProduct;
  }

  @override
  void update(void Function(GCreateProductData_createProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateProductData_createProduct build() => _build();

  _$GCreateProductData_createProduct _build() {
    final _$result = _$v ??
        new _$GCreateProductData_createProduct._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateProductData_createProduct', 'G__typename'),
            id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProductData extends GUpdateProductData {
  @override
  final String G__typename;
  @override
  final GUpdateProductData_updateProduct updateProduct;

  factory _$GUpdateProductData(
          [void Function(GUpdateProductDataBuilder)? updates]) =>
      (new GUpdateProductDataBuilder()..update(updates))._build();

  _$GUpdateProductData._(
      {required this.G__typename, required this.updateProduct})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateProductData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateProduct, r'GUpdateProductData', 'updateProduct');
  }

  @override
  GUpdateProductData rebuild(
          void Function(GUpdateProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProductDataBuilder toBuilder() =>
      new GUpdateProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProductData &&
        G__typename == other.G__typename &&
        updateProduct == other.updateProduct;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateProduct.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateProductData')
          ..add('G__typename', G__typename)
          ..add('updateProduct', updateProduct))
        .toString();
  }
}

class GUpdateProductDataBuilder
    implements Builder<GUpdateProductData, GUpdateProductDataBuilder> {
  _$GUpdateProductData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateProductData_updateProductBuilder? _updateProduct;
  GUpdateProductData_updateProductBuilder get updateProduct =>
      _$this._updateProduct ??= new GUpdateProductData_updateProductBuilder();
  set updateProduct(GUpdateProductData_updateProductBuilder? updateProduct) =>
      _$this._updateProduct = updateProduct;

  GUpdateProductDataBuilder() {
    GUpdateProductData._initializeBuilder(this);
  }

  GUpdateProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateProduct = $v.updateProduct.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProductData;
  }

  @override
  void update(void Function(GUpdateProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateProductData build() => _build();

  _$GUpdateProductData _build() {
    _$GUpdateProductData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProductData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateProductData', 'G__typename'),
              updateProduct: updateProduct.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateProduct';
        updateProduct.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProductData_updateProduct
    extends GUpdateProductData_updateProduct {
  @override
  final String G__typename;
  @override
  final String? id;

  factory _$GUpdateProductData_updateProduct(
          [void Function(GUpdateProductData_updateProductBuilder)? updates]) =>
      (new GUpdateProductData_updateProductBuilder()..update(updates))._build();

  _$GUpdateProductData_updateProduct._({required this.G__typename, this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateProductData_updateProduct', 'G__typename');
  }

  @override
  GUpdateProductData_updateProduct rebuild(
          void Function(GUpdateProductData_updateProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProductData_updateProductBuilder toBuilder() =>
      new GUpdateProductData_updateProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProductData_updateProduct &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateProductData_updateProduct')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GUpdateProductData_updateProductBuilder
    implements
        Builder<GUpdateProductData_updateProduct,
            GUpdateProductData_updateProductBuilder> {
  _$GUpdateProductData_updateProduct? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateProductData_updateProductBuilder() {
    GUpdateProductData_updateProduct._initializeBuilder(this);
  }

  GUpdateProductData_updateProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProductData_updateProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProductData_updateProduct;
  }

  @override
  void update(void Function(GUpdateProductData_updateProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateProductData_updateProduct build() => _build();

  _$GUpdateProductData_updateProduct _build() {
    final _$result = _$v ??
        new _$GUpdateProductData_updateProduct._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUpdateProductData_updateProduct', 'G__typename'),
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
