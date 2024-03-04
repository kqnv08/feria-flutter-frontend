// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaleListPageVars> _$gsaleListPageVarsSerializer =
    new _$GsaleListPageVarsSerializer();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
