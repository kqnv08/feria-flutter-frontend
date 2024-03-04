// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GproductFindAllVars> _$gproductFindAllVarsSerializer =
    new _$GproductFindAllVarsSerializer();
Serializer<GproductListPageVars> _$gproductListPageVarsSerializer =
    new _$GproductListPageVarsSerializer();

class _$GproductFindAllVarsSerializer
    implements StructuredSerializer<GproductFindAllVars> {
  @override
  final Iterable<Type> types = const [
    GproductFindAllVars,
    _$GproductFindAllVars
  ];
  @override
  final String wireName = 'GproductFindAllVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductFindAllVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GproductFindAllVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GproductFindAllVarsBuilder().build();
  }
}

class _$GproductListPageVarsSerializer
    implements StructuredSerializer<GproductListPageVars> {
  @override
  final Iterable<Type> types = const [
    GproductListPageVars,
    _$GproductListPageVars
  ];
  @override
  final String wireName = 'GproductListPageVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GproductListPageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'filterCriteria',
      serializers.serialize(object.filterCriteria,
          specifiedType: const FullType(_i2.GFilterCriteriaInfo)),
    ];

    return result;
  }

  @override
  GproductListPageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GproductListPageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filterCriteria':
          result.filterCriteria.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GFilterCriteriaInfo))!
              as _i2.GFilterCriteriaInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GproductFindAllVars extends GproductFindAllVars {
  factory _$GproductFindAllVars(
          [void Function(GproductFindAllVarsBuilder)? updates]) =>
      (new GproductFindAllVarsBuilder()..update(updates))._build();

  _$GproductFindAllVars._() : super._();

  @override
  GproductFindAllVars rebuild(
          void Function(GproductFindAllVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductFindAllVarsBuilder toBuilder() =>
      new GproductFindAllVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductFindAllVars;
  }

  @override
  int get hashCode {
    return 786827731;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GproductFindAllVars').toString();
  }
}

class GproductFindAllVarsBuilder
    implements Builder<GproductFindAllVars, GproductFindAllVarsBuilder> {
  _$GproductFindAllVars? _$v;

  GproductFindAllVarsBuilder();

  @override
  void replace(GproductFindAllVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductFindAllVars;
  }

  @override
  void update(void Function(GproductFindAllVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductFindAllVars build() => _build();

  _$GproductFindAllVars _build() {
    final _$result = _$v ?? new _$GproductFindAllVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GproductListPageVars extends GproductListPageVars {
  @override
  final _i2.GFilterCriteriaInfo filterCriteria;

  factory _$GproductListPageVars(
          [void Function(GproductListPageVarsBuilder)? updates]) =>
      (new GproductListPageVarsBuilder()..update(updates))._build();

  _$GproductListPageVars._({required this.filterCriteria}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filterCriteria, r'GproductListPageVars', 'filterCriteria');
  }

  @override
  GproductListPageVars rebuild(
          void Function(GproductListPageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GproductListPageVarsBuilder toBuilder() =>
      new GproductListPageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GproductListPageVars &&
        filterCriteria == other.filterCriteria;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterCriteria.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GproductListPageVars')
          ..add('filterCriteria', filterCriteria))
        .toString();
  }
}

class GproductListPageVarsBuilder
    implements Builder<GproductListPageVars, GproductListPageVarsBuilder> {
  _$GproductListPageVars? _$v;

  _i2.GFilterCriteriaInfoBuilder? _filterCriteria;
  _i2.GFilterCriteriaInfoBuilder get filterCriteria =>
      _$this._filterCriteria ??= new _i2.GFilterCriteriaInfoBuilder();
  set filterCriteria(_i2.GFilterCriteriaInfoBuilder? filterCriteria) =>
      _$this._filterCriteria = filterCriteria;

  GproductListPageVarsBuilder();

  GproductListPageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterCriteria = $v.filterCriteria.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GproductListPageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GproductListPageVars;
  }

  @override
  void update(void Function(GproductListPageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GproductListPageVars build() => _build();

  _$GproductListPageVars _build() {
    _$GproductListPageVars _$result;
    try {
      _$result = _$v ??
          new _$GproductListPageVars._(filterCriteria: filterCriteria.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterCriteria';
        filterCriteria.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GproductListPageVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
