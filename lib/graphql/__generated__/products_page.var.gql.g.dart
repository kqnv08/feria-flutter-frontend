// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_page.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateProductVars> _$gCreateProductVarsSerializer =
    new _$GCreateProductVarsSerializer();
Serializer<GUpdateProductVars> _$gUpdateProductVarsSerializer =
    new _$GUpdateProductVarsSerializer();

class _$GCreateProductVarsSerializer
    implements StructuredSerializer<GCreateProductVars> {
  @override
  final Iterable<Type> types = const [GCreateProductVars, _$GCreateProductVars];
  @override
  final String wireName = 'GCreateProductVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateProductVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'productInputDto',
      serializers.serialize(object.productInputDto,
          specifiedType: const FullType(_i1.GProductInputDto)),
    ];

    return result;
  }

  @override
  GCreateProductVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateProductVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'productInputDto':
          result.productInputDto.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductInputDto))!
              as _i1.GProductInputDto);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProductVarsSerializer
    implements StructuredSerializer<GUpdateProductVars> {
  @override
  final Iterable<Type> types = const [GUpdateProductVars, _$GUpdateProductVars];
  @override
  final String wireName = 'GUpdateProductVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProductVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'productInputDto',
      serializers.serialize(object.productInputDto,
          specifiedType: const FullType(_i1.GProductInputDto)),
    ];

    return result;
  }

  @override
  GUpdateProductVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProductVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'productInputDto':
          result.productInputDto.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductInputDto))!
              as _i1.GProductInputDto);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateProductVars extends GCreateProductVars {
  @override
  final _i1.GProductInputDto productInputDto;

  factory _$GCreateProductVars(
          [void Function(GCreateProductVarsBuilder)? updates]) =>
      (new GCreateProductVarsBuilder()..update(updates))._build();

  _$GCreateProductVars._({required this.productInputDto}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productInputDto, r'GCreateProductVars', 'productInputDto');
  }

  @override
  GCreateProductVars rebuild(
          void Function(GCreateProductVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateProductVarsBuilder toBuilder() =>
      new GCreateProductVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateProductVars &&
        productInputDto == other.productInputDto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productInputDto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateProductVars')
          ..add('productInputDto', productInputDto))
        .toString();
  }
}

class GCreateProductVarsBuilder
    implements Builder<GCreateProductVars, GCreateProductVarsBuilder> {
  _$GCreateProductVars? _$v;

  _i1.GProductInputDtoBuilder? _productInputDto;
  _i1.GProductInputDtoBuilder get productInputDto =>
      _$this._productInputDto ??= new _i1.GProductInputDtoBuilder();
  set productInputDto(_i1.GProductInputDtoBuilder? productInputDto) =>
      _$this._productInputDto = productInputDto;

  GCreateProductVarsBuilder();

  GCreateProductVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productInputDto = $v.productInputDto.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateProductVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateProductVars;
  }

  @override
  void update(void Function(GCreateProductVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateProductVars build() => _build();

  _$GCreateProductVars _build() {
    _$GCreateProductVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateProductVars._(productInputDto: productInputDto.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productInputDto';
        productInputDto.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateProductVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProductVars extends GUpdateProductVars {
  @override
  final String id;
  @override
  final _i1.GProductInputDto productInputDto;

  factory _$GUpdateProductVars(
          [void Function(GUpdateProductVarsBuilder)? updates]) =>
      (new GUpdateProductVarsBuilder()..update(updates))._build();

  _$GUpdateProductVars._({required this.id, required this.productInputDto})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateProductVars', 'id');
    BuiltValueNullFieldError.checkNotNull(
        productInputDto, r'GUpdateProductVars', 'productInputDto');
  }

  @override
  GUpdateProductVars rebuild(
          void Function(GUpdateProductVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProductVarsBuilder toBuilder() =>
      new GUpdateProductVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProductVars &&
        id == other.id &&
        productInputDto == other.productInputDto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productInputDto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateProductVars')
          ..add('id', id)
          ..add('productInputDto', productInputDto))
        .toString();
  }
}

class GUpdateProductVarsBuilder
    implements Builder<GUpdateProductVars, GUpdateProductVarsBuilder> {
  _$GUpdateProductVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i1.GProductInputDtoBuilder? _productInputDto;
  _i1.GProductInputDtoBuilder get productInputDto =>
      _$this._productInputDto ??= new _i1.GProductInputDtoBuilder();
  set productInputDto(_i1.GProductInputDtoBuilder? productInputDto) =>
      _$this._productInputDto = productInputDto;

  GUpdateProductVarsBuilder();

  GUpdateProductVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productInputDto = $v.productInputDto.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProductVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProductVars;
  }

  @override
  void update(void Function(GUpdateProductVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateProductVars build() => _build();

  _$GUpdateProductVars _build() {
    _$GUpdateProductVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProductVars._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUpdateProductVars', 'id'),
              productInputDto: productInputDto.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productInputDto';
        productInputDto.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateProductVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
