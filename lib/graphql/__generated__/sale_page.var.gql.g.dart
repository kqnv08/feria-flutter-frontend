// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_page.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSaleVars> _$gSaleVarsSerializer = new _$GSaleVarsSerializer();

class _$GSaleVarsSerializer implements StructuredSerializer<GSaleVars> {
  @override
  final Iterable<Type> types = const [GSaleVars, _$GSaleVars];
  @override
  final String wireName = 'GSaleVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'saleId',
      serializers.serialize(object.saleId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSaleVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'saleId':
          result.saleId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleVars extends GSaleVars {
  @override
  final String saleId;

  factory _$GSaleVars([void Function(GSaleVarsBuilder)? updates]) =>
      (new GSaleVarsBuilder()..update(updates))._build();

  _$GSaleVars._({required this.saleId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(saleId, r'GSaleVars', 'saleId');
  }

  @override
  GSaleVars rebuild(void Function(GSaleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleVarsBuilder toBuilder() => new GSaleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleVars && saleId == other.saleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, saleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleVars')..add('saleId', saleId))
        .toString();
  }
}

class GSaleVarsBuilder implements Builder<GSaleVars, GSaleVarsBuilder> {
  _$GSaleVars? _$v;

  String? _saleId;
  String? get saleId => _$this._saleId;
  set saleId(String? saleId) => _$this._saleId = saleId;

  GSaleVarsBuilder();

  GSaleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saleId = $v.saleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleVars;
  }

  @override
  void update(void Function(GSaleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleVars build() => _build();

  _$GSaleVars _build() {
    final _$result = _$v ??
        new _$GSaleVars._(
            saleId: BuiltValueNullFieldError.checkNotNull(
                saleId, r'GSaleVars', 'saleId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
