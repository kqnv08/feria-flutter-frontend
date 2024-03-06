// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaleListPageVars> _$gsaleListPageVarsSerializer =
    new _$GsaleListPageVarsSerializer();
Serializer<GcreateSaleVars> _$gcreateSaleVarsSerializer =
    new _$GcreateSaleVarsSerializer();

class _$GsaleListPageVarsSerializer
    implements StructuredSerializer<GsaleListPageVars> {
  @override
  final Iterable<Type> types = const [GsaleListPageVars, _$GsaleListPageVars];
  @override
  final String wireName = 'GsaleListPageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsaleListPageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'saleCriteria',
      serializers.serialize(object.saleCriteria,
          specifiedType: const FullType(_i1.GFilterCriteriaInfo)),
    ];

    return result;
  }

  @override
  GsaleListPageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaleListPageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'saleCriteria':
          result.saleCriteria.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFilterCriteriaInfo))!
              as _i1.GFilterCriteriaInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateSaleVarsSerializer
    implements StructuredSerializer<GcreateSaleVars> {
  @override
  final Iterable<Type> types = const [GcreateSaleVars, _$GcreateSaleVars];
  @override
  final String wireName = 'GcreateSaleVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateSaleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'saleInputDto',
      serializers.serialize(object.saleInputDto,
          specifiedType: const FullType(_i1.GNewSaleInputDto)),
    ];

    return result;
  }

  @override
  GcreateSaleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateSaleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'saleInputDto':
          result.saleInputDto.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GNewSaleInputDto))!
              as _i1.GNewSaleInputDto);
          break;
      }
    }

    return result.build();
  }
}

class _$GsaleListPageVars extends GsaleListPageVars {
  @override
  final _i1.GFilterCriteriaInfo saleCriteria;

  factory _$GsaleListPageVars(
          [void Function(GsaleListPageVarsBuilder)? updates]) =>
      (new GsaleListPageVarsBuilder()..update(updates))._build();

  _$GsaleListPageVars._({required this.saleCriteria}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        saleCriteria, r'GsaleListPageVars', 'saleCriteria');
  }

  @override
  GsaleListPageVars rebuild(void Function(GsaleListPageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaleListPageVarsBuilder toBuilder() =>
      new GsaleListPageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaleListPageVars && saleCriteria == other.saleCriteria;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, saleCriteria.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaleListPageVars')
          ..add('saleCriteria', saleCriteria))
        .toString();
  }
}

class GsaleListPageVarsBuilder
    implements Builder<GsaleListPageVars, GsaleListPageVarsBuilder> {
  _$GsaleListPageVars? _$v;

  _i1.GFilterCriteriaInfoBuilder? _saleCriteria;
  _i1.GFilterCriteriaInfoBuilder get saleCriteria =>
      _$this._saleCriteria ??= new _i1.GFilterCriteriaInfoBuilder();
  set saleCriteria(_i1.GFilterCriteriaInfoBuilder? saleCriteria) =>
      _$this._saleCriteria = saleCriteria;

  GsaleListPageVarsBuilder();

  GsaleListPageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saleCriteria = $v.saleCriteria.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaleListPageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaleListPageVars;
  }

  @override
  void update(void Function(GsaleListPageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaleListPageVars build() => _build();

  _$GsaleListPageVars _build() {
    _$GsaleListPageVars _$result;
    try {
      _$result =
          _$v ?? new _$GsaleListPageVars._(saleCriteria: saleCriteria.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saleCriteria';
        saleCriteria.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsaleListPageVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateSaleVars extends GcreateSaleVars {
  @override
  final _i1.GNewSaleInputDto saleInputDto;

  factory _$GcreateSaleVars([void Function(GcreateSaleVarsBuilder)? updates]) =>
      (new GcreateSaleVarsBuilder()..update(updates))._build();

  _$GcreateSaleVars._({required this.saleInputDto}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        saleInputDto, r'GcreateSaleVars', 'saleInputDto');
  }

  @override
  GcreateSaleVars rebuild(void Function(GcreateSaleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateSaleVarsBuilder toBuilder() =>
      new GcreateSaleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateSaleVars && saleInputDto == other.saleInputDto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, saleInputDto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateSaleVars')
          ..add('saleInputDto', saleInputDto))
        .toString();
  }
}

class GcreateSaleVarsBuilder
    implements Builder<GcreateSaleVars, GcreateSaleVarsBuilder> {
  _$GcreateSaleVars? _$v;

  _i1.GNewSaleInputDtoBuilder? _saleInputDto;
  _i1.GNewSaleInputDtoBuilder get saleInputDto =>
      _$this._saleInputDto ??= new _i1.GNewSaleInputDtoBuilder();
  set saleInputDto(_i1.GNewSaleInputDtoBuilder? saleInputDto) =>
      _$this._saleInputDto = saleInputDto;

  GcreateSaleVarsBuilder();

  GcreateSaleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saleInputDto = $v.saleInputDto.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateSaleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateSaleVars;
  }

  @override
  void update(void Function(GcreateSaleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateSaleVars build() => _build();

  _$GcreateSaleVars _build() {
    _$GcreateSaleVars _$result;
    try {
      _$result =
          _$v ?? new _$GcreateSaleVars._(saleInputDto: saleInputDto.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saleInputDto';
        saleInputDto.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateSaleVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
