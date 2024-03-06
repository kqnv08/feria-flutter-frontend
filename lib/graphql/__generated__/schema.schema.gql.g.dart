// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GBrandInputDto> _$gBrandInputDtoSerializer =
    new _$GBrandInputDtoSerializer();
Serializer<GCategoryInputDto> _$gCategoryInputDtoSerializer =
    new _$GCategoryInputDtoSerializer();
Serializer<GFilterCriteriaInfo> _$gFilterCriteriaInfoSerializer =
    new _$GFilterCriteriaInfoSerializer();
Serializer<GIFilterCriterion> _$gIFilterCriterionSerializer =
    new _$GIFilterCriterionSerializer();
Serializer<GISortCriteria> _$gISortCriteriaSerializer =
    new _$GISortCriteriaSerializer();
Serializer<GNewSaleInputDto> _$gNewSaleInputDtoSerializer =
    new _$GNewSaleInputDtoSerializer();
Serializer<GProductInputDto> _$gProductInputDtoSerializer =
    new _$GProductInputDtoSerializer();
Serializer<GSaleDetailInputDto> _$gSaleDetailInputDtoSerializer =
    new _$GSaleDetailInputDtoSerializer();
Serializer<GSaleInputDto> _$gSaleInputDtoSerializer =
    new _$GSaleInputDtoSerializer();
Serializer<GUserInputDto> _$gUserInputDtoSerializer =
    new _$GUserInputDtoSerializer();

class _$GBrandInputDtoSerializer
    implements StructuredSerializer<GBrandInputDto> {
  @override
  final Iterable<Type> types = const [GBrandInputDto, _$GBrandInputDto];
  @override
  final String wireName = 'GBrandInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBrandInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.enabled;
    if (value != null) {
      result
        ..add('enabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBrandInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBrandInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCategoryInputDtoSerializer
    implements StructuredSerializer<GCategoryInputDto> {
  @override
  final Iterable<Type> types = const [GCategoryInputDto, _$GCategoryInputDto];
  @override
  final String wireName = 'GCategoryInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoryInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCategoryInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoryInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterCriteriaInfoSerializer
    implements StructuredSerializer<GFilterCriteriaInfo> {
  @override
  final Iterable<Type> types = const [
    GFilterCriteriaInfo,
    _$GFilterCriteriaInfo
  ];
  @override
  final String wireName = 'GFilterCriteriaInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFilterCriteriaInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filter;
    if (value != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GIFilterCriterion)));
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
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GISortCriteria)));
    }
    return result;
  }

  @override
  GFilterCriteriaInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterCriteriaInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filter':
          result.filter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GIFilterCriterion))!
              as GIFilterCriterion);
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GISortCriteria))!
              as GISortCriteria);
          break;
      }
    }

    return result.build();
  }
}

class _$GIFilterCriterionSerializer
    implements StructuredSerializer<GIFilterCriterion> {
  @override
  final Iterable<Type> types = const [GIFilterCriterion, _$GIFilterCriterion];
  @override
  final String wireName = 'GIFilterCriterion';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIFilterCriterion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filters;
    if (value != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GIFilterCriterion)])));
    }
    value = object.property;
    if (value != null) {
      result
        ..add('property')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeValue;
    if (value != null) {
      result
        ..add('typeValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GIFilterCriterion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIFilterCriterionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GIFilterCriterion)]))!
              as BuiltList<Object?>);
          break;
        case 'property':
          result.property = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeValue':
          result.typeValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GISortCriteriaSerializer
    implements StructuredSerializer<GISortCriteria> {
  @override
  final Iterable<Type> types = const [GISortCriteria, _$GISortCriteria];
  @override
  final String wireName = 'GISortCriteria';

  @override
  Iterable<Object?> serialize(Serializers serializers, GISortCriteria object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'column',
      serializers.serialize(object.column,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GISortCriteria deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GISortCriteriaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewSaleInputDtoSerializer
    implements StructuredSerializer<GNewSaleInputDto> {
  @override
  final Iterable<Type> types = const [GNewSaleInputDto, _$GNewSaleInputDto];
  @override
  final String wireName = 'GNewSaleInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewSaleInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'saleDetails',
      serializers.serialize(object.saleDetails,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSaleDetailInputDto)])),
    ];

    return result;
  }

  @override
  GNewSaleInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewSaleInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'saleDetails':
          result.saleDetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GSaleDetailInputDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductInputDtoSerializer
    implements StructuredSerializer<GProductInputDto> {
  @override
  final Iterable<Type> types = const [GProductInputDto, _$GProductInputDto];
  @override
  final String wireName = 'GProductInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProductInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.enabled;
    if (value != null) {
      result
        ..add('enabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProductInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleDetailInputDtoSerializer
    implements StructuredSerializer<GSaleDetailInputDto> {
  @override
  final Iterable<Type> types = const [
    GSaleDetailInputDto,
    _$GSaleDetailInputDto
  ];
  @override
  final String wireName = 'GSaleDetailInputDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaleDetailInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'productId',
      serializers.serialize(object.productId,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.saleId;
    if (value != null) {
      result
        ..add('saleId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaleDetailInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleDetailInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'saleId':
          result.saleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleInputDtoSerializer implements StructuredSerializer<GSaleInputDto> {
  @override
  final Iterable<Type> types = const [GSaleInputDto, _$GSaleInputDto];
  @override
  final String wireName = 'GSaleInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaleInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSaleInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserInputDtoSerializer implements StructuredSerializer<GUserInputDto> {
  @override
  final Iterable<Type> types = const [GUserInputDto, _$GUserInputDto];
  @override
  final String wireName = 'GUserInputDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserInputDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'roleId',
      serializers.serialize(object.roleId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.enabled;
    if (value != null) {
      result
        ..add('enabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserInputDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInputDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roleId':
          result.roleId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBrandInputDto extends GBrandInputDto {
  @override
  final bool? enabled;
  @override
  final String key;
  @override
  final String? value;

  factory _$GBrandInputDto([void Function(GBrandInputDtoBuilder)? updates]) =>
      (new GBrandInputDtoBuilder()..update(updates))._build();

  _$GBrandInputDto._({this.enabled, required this.key, this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'GBrandInputDto', 'key');
  }

  @override
  GBrandInputDto rebuild(void Function(GBrandInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBrandInputDtoBuilder toBuilder() =>
      new GBrandInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBrandInputDto &&
        enabled == other.enabled &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBrandInputDto')
          ..add('enabled', enabled)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class GBrandInputDtoBuilder
    implements Builder<GBrandInputDto, GBrandInputDtoBuilder> {
  _$GBrandInputDto? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GBrandInputDtoBuilder();

  GBrandInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBrandInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBrandInputDto;
  }

  @override
  void update(void Function(GBrandInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBrandInputDto build() => _build();

  _$GBrandInputDto _build() {
    final _$result = _$v ??
        new _$GBrandInputDto._(
            enabled: enabled,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GBrandInputDto', 'key'),
            value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GCategoryInputDto extends GCategoryInputDto {
  @override
  final String name;

  factory _$GCategoryInputDto(
          [void Function(GCategoryInputDtoBuilder)? updates]) =>
      (new GCategoryInputDtoBuilder()..update(updates))._build();

  _$GCategoryInputDto._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GCategoryInputDto', 'name');
  }

  @override
  GCategoryInputDto rebuild(void Function(GCategoryInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoryInputDtoBuilder toBuilder() =>
      new GCategoryInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoryInputDto && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCategoryInputDto')
          ..add('name', name))
        .toString();
  }
}

class GCategoryInputDtoBuilder
    implements Builder<GCategoryInputDto, GCategoryInputDtoBuilder> {
  _$GCategoryInputDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCategoryInputDtoBuilder();

  GCategoryInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCategoryInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoryInputDto;
  }

  @override
  void update(void Function(GCategoryInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCategoryInputDto build() => _build();

  _$GCategoryInputDto _build() {
    final _$result = _$v ??
        new _$GCategoryInputDto._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GCategoryInputDto', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GFilterCriteriaInfo extends GFilterCriteriaInfo {
  @override
  final GIFilterCriterion? filter;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final GISortCriteria? sort;

  factory _$GFilterCriteriaInfo(
          [void Function(GFilterCriteriaInfoBuilder)? updates]) =>
      (new GFilterCriteriaInfoBuilder()..update(updates))._build();

  _$GFilterCriteriaInfo._({this.filter, this.limit, this.page, this.sort})
      : super._();

  @override
  GFilterCriteriaInfo rebuild(
          void Function(GFilterCriteriaInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterCriteriaInfoBuilder toBuilder() =>
      new GFilterCriteriaInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterCriteriaInfo &&
        filter == other.filter &&
        limit == other.limit &&
        page == other.page &&
        sort == other.sort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterCriteriaInfo')
          ..add('filter', filter)
          ..add('limit', limit)
          ..add('page', page)
          ..add('sort', sort))
        .toString();
  }
}

class GFilterCriteriaInfoBuilder
    implements Builder<GFilterCriteriaInfo, GFilterCriteriaInfoBuilder> {
  _$GFilterCriteriaInfo? _$v;

  GIFilterCriterionBuilder? _filter;
  GIFilterCriterionBuilder get filter =>
      _$this._filter ??= new GIFilterCriterionBuilder();
  set filter(GIFilterCriterionBuilder? filter) => _$this._filter = filter;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GISortCriteriaBuilder? _sort;
  GISortCriteriaBuilder get sort =>
      _$this._sort ??= new GISortCriteriaBuilder();
  set sort(GISortCriteriaBuilder? sort) => _$this._sort = sort;

  GFilterCriteriaInfoBuilder();

  GFilterCriteriaInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _limit = $v.limit;
      _page = $v.page;
      _sort = $v.sort?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterCriteriaInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterCriteriaInfo;
  }

  @override
  void update(void Function(GFilterCriteriaInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterCriteriaInfo build() => _build();

  _$GFilterCriteriaInfo _build() {
    _$GFilterCriteriaInfo _$result;
    try {
      _$result = _$v ??
          new _$GFilterCriteriaInfo._(
              filter: _filter?.build(),
              limit: limit,
              page: page,
              sort: _sort?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();

        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFilterCriteriaInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIFilterCriterion extends GIFilterCriterion {
  @override
  final BuiltList<GIFilterCriterion>? filters;
  @override
  final String? property;
  @override
  final String? type;
  @override
  final String? typeValue;
  @override
  final String? value;

  factory _$GIFilterCriterion(
          [void Function(GIFilterCriterionBuilder)? updates]) =>
      (new GIFilterCriterionBuilder()..update(updates))._build();

  _$GIFilterCriterion._(
      {this.filters, this.property, this.type, this.typeValue, this.value})
      : super._();

  @override
  GIFilterCriterion rebuild(void Function(GIFilterCriterionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIFilterCriterionBuilder toBuilder() =>
      new GIFilterCriterionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIFilterCriterion &&
        filters == other.filters &&
        property == other.property &&
        type == other.type &&
        typeValue == other.typeValue &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, property.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeValue.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIFilterCriterion')
          ..add('filters', filters)
          ..add('property', property)
          ..add('type', type)
          ..add('typeValue', typeValue)
          ..add('value', value))
        .toString();
  }
}

class GIFilterCriterionBuilder
    implements Builder<GIFilterCriterion, GIFilterCriterionBuilder> {
  _$GIFilterCriterion? _$v;

  ListBuilder<GIFilterCriterion>? _filters;
  ListBuilder<GIFilterCriterion> get filters =>
      _$this._filters ??= new ListBuilder<GIFilterCriterion>();
  set filters(ListBuilder<GIFilterCriterion>? filters) =>
      _$this._filters = filters;

  String? _property;
  String? get property => _$this._property;
  set property(String? property) => _$this._property = property;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _typeValue;
  String? get typeValue => _$this._typeValue;
  set typeValue(String? typeValue) => _$this._typeValue = typeValue;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GIFilterCriterionBuilder();

  GIFilterCriterionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _property = $v.property;
      _type = $v.type;
      _typeValue = $v.typeValue;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIFilterCriterion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIFilterCriterion;
  }

  @override
  void update(void Function(GIFilterCriterionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIFilterCriterion build() => _build();

  _$GIFilterCriterion _build() {
    _$GIFilterCriterion _$result;
    try {
      _$result = _$v ??
          new _$GIFilterCriterion._(
              filters: _filters?.build(),
              property: property,
              type: type,
              typeValue: typeValue,
              value: value);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIFilterCriterion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GISortCriteria extends GISortCriteria {
  @override
  final String column;
  @override
  final String order;

  factory _$GISortCriteria([void Function(GISortCriteriaBuilder)? updates]) =>
      (new GISortCriteriaBuilder()..update(updates))._build();

  _$GISortCriteria._({required this.column, required this.order}) : super._() {
    BuiltValueNullFieldError.checkNotNull(column, r'GISortCriteria', 'column');
    BuiltValueNullFieldError.checkNotNull(order, r'GISortCriteria', 'order');
  }

  @override
  GISortCriteria rebuild(void Function(GISortCriteriaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GISortCriteriaBuilder toBuilder() =>
      new GISortCriteriaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GISortCriteria &&
        column == other.column &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, column.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GISortCriteria')
          ..add('column', column)
          ..add('order', order))
        .toString();
  }
}

class GISortCriteriaBuilder
    implements Builder<GISortCriteria, GISortCriteriaBuilder> {
  _$GISortCriteria? _$v;

  String? _column;
  String? get column => _$this._column;
  set column(String? column) => _$this._column = column;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  GISortCriteriaBuilder();

  GISortCriteriaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _column = $v.column;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GISortCriteria other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GISortCriteria;
  }

  @override
  void update(void Function(GISortCriteriaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GISortCriteria build() => _build();

  _$GISortCriteria _build() {
    final _$result = _$v ??
        new _$GISortCriteria._(
            column: BuiltValueNullFieldError.checkNotNull(
                column, r'GISortCriteria', 'column'),
            order: BuiltValueNullFieldError.checkNotNull(
                order, r'GISortCriteria', 'order'));
    replace(_$result);
    return _$result;
  }
}

class _$GNewSaleInputDto extends GNewSaleInputDto {
  @override
  final BuiltList<GSaleDetailInputDto> saleDetails;

  factory _$GNewSaleInputDto(
          [void Function(GNewSaleInputDtoBuilder)? updates]) =>
      (new GNewSaleInputDtoBuilder()..update(updates))._build();

  _$GNewSaleInputDto._({required this.saleDetails}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        saleDetails, r'GNewSaleInputDto', 'saleDetails');
  }

  @override
  GNewSaleInputDto rebuild(void Function(GNewSaleInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewSaleInputDtoBuilder toBuilder() =>
      new GNewSaleInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewSaleInputDto && saleDetails == other.saleDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, saleDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNewSaleInputDto')
          ..add('saleDetails', saleDetails))
        .toString();
  }
}

class GNewSaleInputDtoBuilder
    implements Builder<GNewSaleInputDto, GNewSaleInputDtoBuilder> {
  _$GNewSaleInputDto? _$v;

  ListBuilder<GSaleDetailInputDto>? _saleDetails;
  ListBuilder<GSaleDetailInputDto> get saleDetails =>
      _$this._saleDetails ??= new ListBuilder<GSaleDetailInputDto>();
  set saleDetails(ListBuilder<GSaleDetailInputDto>? saleDetails) =>
      _$this._saleDetails = saleDetails;

  GNewSaleInputDtoBuilder();

  GNewSaleInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saleDetails = $v.saleDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewSaleInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewSaleInputDto;
  }

  @override
  void update(void Function(GNewSaleInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNewSaleInputDto build() => _build();

  _$GNewSaleInputDto _build() {
    _$GNewSaleInputDto _$result;
    try {
      _$result =
          _$v ?? new _$GNewSaleInputDto._(saleDetails: saleDetails.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saleDetails';
        saleDetails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNewSaleInputDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductInputDto extends GProductInputDto {
  @override
  final bool? enabled;
  @override
  final String key;
  @override
  final String? value;

  factory _$GProductInputDto(
          [void Function(GProductInputDtoBuilder)? updates]) =>
      (new GProductInputDtoBuilder()..update(updates))._build();

  _$GProductInputDto._({this.enabled, required this.key, this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'GProductInputDto', 'key');
  }

  @override
  GProductInputDto rebuild(void Function(GProductInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductInputDtoBuilder toBuilder() =>
      new GProductInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductInputDto &&
        enabled == other.enabled &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductInputDto')
          ..add('enabled', enabled)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class GProductInputDtoBuilder
    implements Builder<GProductInputDto, GProductInputDtoBuilder> {
  _$GProductInputDto? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GProductInputDtoBuilder();

  GProductInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductInputDto;
  }

  @override
  void update(void Function(GProductInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductInputDto build() => _build();

  _$GProductInputDto _build() {
    final _$result = _$v ??
        new _$GProductInputDto._(
            enabled: enabled,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GProductInputDto', 'key'),
            value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GSaleDetailInputDto extends GSaleDetailInputDto {
  @override
  final double price;
  @override
  final String productId;
  @override
  final int quantity;
  @override
  final String? saleId;

  factory _$GSaleDetailInputDto(
          [void Function(GSaleDetailInputDtoBuilder)? updates]) =>
      (new GSaleDetailInputDtoBuilder()..update(updates))._build();

  _$GSaleDetailInputDto._(
      {required this.price,
      required this.productId,
      required this.quantity,
      this.saleId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        price, r'GSaleDetailInputDto', 'price');
    BuiltValueNullFieldError.checkNotNull(
        productId, r'GSaleDetailInputDto', 'productId');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'GSaleDetailInputDto', 'quantity');
  }

  @override
  GSaleDetailInputDto rebuild(
          void Function(GSaleDetailInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleDetailInputDtoBuilder toBuilder() =>
      new GSaleDetailInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleDetailInputDto &&
        price == other.price &&
        productId == other.productId &&
        quantity == other.quantity &&
        saleId == other.saleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, saleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleDetailInputDto')
          ..add('price', price)
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('saleId', saleId))
        .toString();
  }
}

class GSaleDetailInputDtoBuilder
    implements Builder<GSaleDetailInputDto, GSaleDetailInputDtoBuilder> {
  _$GSaleDetailInputDto? _$v;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _saleId;
  String? get saleId => _$this._saleId;
  set saleId(String? saleId) => _$this._saleId = saleId;

  GSaleDetailInputDtoBuilder();

  GSaleDetailInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _productId = $v.productId;
      _quantity = $v.quantity;
      _saleId = $v.saleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleDetailInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleDetailInputDto;
  }

  @override
  void update(void Function(GSaleDetailInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleDetailInputDto build() => _build();

  _$GSaleDetailInputDto _build() {
    final _$result = _$v ??
        new _$GSaleDetailInputDto._(
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'GSaleDetailInputDto', 'price'),
            productId: BuiltValueNullFieldError.checkNotNull(
                productId, r'GSaleDetailInputDto', 'productId'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'GSaleDetailInputDto', 'quantity'),
            saleId: saleId);
    replace(_$result);
    return _$result;
  }
}

class _$GSaleInputDto extends GSaleInputDto {
  @override
  final String name;

  factory _$GSaleInputDto([void Function(GSaleInputDtoBuilder)? updates]) =>
      (new GSaleInputDtoBuilder()..update(updates))._build();

  _$GSaleInputDto._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GSaleInputDto', 'name');
  }

  @override
  GSaleInputDto rebuild(void Function(GSaleInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleInputDtoBuilder toBuilder() => new GSaleInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleInputDto && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleInputDto')..add('name', name))
        .toString();
  }
}

class GSaleInputDtoBuilder
    implements Builder<GSaleInputDto, GSaleInputDtoBuilder> {
  _$GSaleInputDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSaleInputDtoBuilder();

  GSaleInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleInputDto;
  }

  @override
  void update(void Function(GSaleInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleInputDto build() => _build();

  _$GSaleInputDto _build() {
    final _$result = _$v ??
        new _$GSaleInputDto._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSaleInputDto', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserInputDto extends GUserInputDto {
  @override
  final bool? active;
  @override
  final String email;
  @override
  final bool? enabled;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? password;
  @override
  final String roleId;

  factory _$GUserInputDto([void Function(GUserInputDtoBuilder)? updates]) =>
      (new GUserInputDtoBuilder()..update(updates))._build();

  _$GUserInputDto._(
      {this.active,
      required this.email,
      this.enabled,
      this.firstName,
      this.lastName,
      this.password,
      required this.roleId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GUserInputDto', 'email');
    BuiltValueNullFieldError.checkNotNull(roleId, r'GUserInputDto', 'roleId');
  }

  @override
  GUserInputDto rebuild(void Function(GUserInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInputDtoBuilder toBuilder() => new GUserInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInputDto &&
        active == other.active &&
        email == other.email &&
        enabled == other.enabled &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        roleId == other.roleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserInputDto')
          ..add('active', active)
          ..add('email', email)
          ..add('enabled', enabled)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('roleId', roleId))
        .toString();
  }
}

class GUserInputDtoBuilder
    implements Builder<GUserInputDto, GUserInputDtoBuilder> {
  _$GUserInputDto? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  GUserInputDtoBuilder();

  GUserInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _email = $v.email;
      _enabled = $v.enabled;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _roleId = $v.roleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInputDto;
  }

  @override
  void update(void Function(GUserInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInputDto build() => _build();

  _$GUserInputDto _build() {
    final _$result = _$v ??
        new _$GUserInputDto._(
            active: active,
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUserInputDto', 'email'),
            enabled: enabled,
            firstName: firstName,
            lastName: lastName,
            password: password,
            roleId: BuiltValueNullFieldError.checkNotNull(
                roleId, r'GUserInputDto', 'roleId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
