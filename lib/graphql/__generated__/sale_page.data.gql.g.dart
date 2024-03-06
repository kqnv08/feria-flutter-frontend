// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_page.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSaleData> _$gSaleDataSerializer = new _$GSaleDataSerializer();
Serializer<GSaleData_sale> _$gSaleDataSaleSerializer =
    new _$GSaleData_saleSerializer();
Serializer<GSaleData_sale_details> _$gSaleDataSaleDetailsSerializer =
    new _$GSaleData_sale_detailsSerializer();
Serializer<GSaleData_sale_details_product>
    _$gSaleDataSaleDetailsProductSerializer =
    new _$GSaleData_sale_details_productSerializer();

class _$GSaleDataSerializer implements StructuredSerializer<GSaleData> {
  @override
  final Iterable<Type> types = const [GSaleData, _$GSaleData];
  @override
  final String wireName = 'GSaleData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sale',
      serializers.serialize(object.sale,
          specifiedType: const FullType(GSaleData_sale)),
    ];

    return result;
  }

  @override
  GSaleData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleDataBuilder();

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
        case 'sale':
          result.sale.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSaleData_sale))!
              as GSaleData_sale);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleData_saleSerializer
    implements StructuredSerializer<GSaleData_sale> {
  @override
  final Iterable<Type> types = const [GSaleData_sale, _$GSaleData_sale];
  @override
  final String wireName = 'GSaleData_sale';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaleData_sale object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSaleData_sale_details)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  GSaleData_sale deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleData_saleBuilder();

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
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSaleData_sale_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleData_sale_detailsSerializer
    implements StructuredSerializer<GSaleData_sale_details> {
  @override
  final Iterable<Type> types = const [
    GSaleData_sale_details,
    _$GSaleData_sale_details
  ];
  @override
  final String wireName = 'GSaleData_sale_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaleData_sale_details object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.product;
    if (value != null) {
      result
        ..add('product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSaleData_sale_details_product)));
    }
    return result;
  }

  @override
  GSaleData_sale_details deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleData_sale_detailsBuilder();

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
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSaleData_sale_details_product))!
              as GSaleData_sale_details_product);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaleData_sale_details_productSerializer
    implements StructuredSerializer<GSaleData_sale_details_product> {
  @override
  final Iterable<Type> types = const [
    GSaleData_sale_details_product,
    _$GSaleData_sale_details_product
  ];
  @override
  final String wireName = 'GSaleData_sale_details_product';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaleData_sale_details_product object,
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
    return result;
  }

  @override
  GSaleData_sale_details_product deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaleData_sale_details_productBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSaleData extends GSaleData {
  @override
  final String G__typename;
  @override
  final GSaleData_sale sale;

  factory _$GSaleData([void Function(GSaleDataBuilder)? updates]) =>
      (new GSaleDataBuilder()..update(updates))._build();

  _$GSaleData._({required this.G__typename, required this.sale}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sale, r'GSaleData', 'sale');
  }

  @override
  GSaleData rebuild(void Function(GSaleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleDataBuilder toBuilder() => new GSaleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleData &&
        G__typename == other.G__typename &&
        sale == other.sale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleData')
          ..add('G__typename', G__typename)
          ..add('sale', sale))
        .toString();
  }
}

class GSaleDataBuilder implements Builder<GSaleData, GSaleDataBuilder> {
  _$GSaleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaleData_saleBuilder? _sale;
  GSaleData_saleBuilder get sale =>
      _$this._sale ??= new GSaleData_saleBuilder();
  set sale(GSaleData_saleBuilder? sale) => _$this._sale = sale;

  GSaleDataBuilder() {
    GSaleData._initializeBuilder(this);
  }

  GSaleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sale = $v.sale.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleData;
  }

  @override
  void update(void Function(GSaleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleData build() => _build();

  _$GSaleData _build() {
    _$GSaleData _$result;
    try {
      _$result = _$v ??
          new _$GSaleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaleData', 'G__typename'),
              sale: sale.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sale';
        sale.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaleData_sale extends GSaleData_sale {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final double total;
  @override
  final BuiltList<GSaleData_sale_details> details;

  factory _$GSaleData_sale([void Function(GSaleData_saleBuilder)? updates]) =>
      (new GSaleData_saleBuilder()..update(updates))._build();

  _$GSaleData_sale._(
      {required this.G__typename,
      this.id,
      this.createdAt,
      required this.total,
      required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaleData_sale', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(total, r'GSaleData_sale', 'total');
    BuiltValueNullFieldError.checkNotNull(
        details, r'GSaleData_sale', 'details');
  }

  @override
  GSaleData_sale rebuild(void Function(GSaleData_saleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleData_saleBuilder toBuilder() =>
      new GSaleData_saleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleData_sale &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        total == other.total &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleData_sale')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('total', total)
          ..add('details', details))
        .toString();
  }
}

class GSaleData_saleBuilder
    implements Builder<GSaleData_sale, GSaleData_saleBuilder> {
  _$GSaleData_sale? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  ListBuilder<GSaleData_sale_details>? _details;
  ListBuilder<GSaleData_sale_details> get details =>
      _$this._details ??= new ListBuilder<GSaleData_sale_details>();
  set details(ListBuilder<GSaleData_sale_details>? details) =>
      _$this._details = details;

  GSaleData_saleBuilder() {
    GSaleData_sale._initializeBuilder(this);
  }

  GSaleData_saleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt?.toBuilder();
      _total = $v.total;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleData_sale other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleData_sale;
  }

  @override
  void update(void Function(GSaleData_saleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleData_sale build() => _build();

  _$GSaleData_sale _build() {
    _$GSaleData_sale _$result;
    try {
      _$result = _$v ??
          new _$GSaleData_sale._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaleData_sale', 'G__typename'),
              id: id,
              createdAt: _createdAt?.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GSaleData_sale', 'total'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();

        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaleData_sale', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaleData_sale_details extends GSaleData_sale_details {
  @override
  final String G__typename;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  final double? total;
  @override
  final GSaleData_sale_details_product? product;

  factory _$GSaleData_sale_details(
          [void Function(GSaleData_sale_detailsBuilder)? updates]) =>
      (new GSaleData_sale_detailsBuilder()..update(updates))._build();

  _$GSaleData_sale_details._(
      {required this.G__typename,
      this.quantity,
      this.price,
      this.total,
      this.product})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaleData_sale_details', 'G__typename');
  }

  @override
  GSaleData_sale_details rebuild(
          void Function(GSaleData_sale_detailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleData_sale_detailsBuilder toBuilder() =>
      new GSaleData_sale_detailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleData_sale_details &&
        G__typename == other.G__typename &&
        quantity == other.quantity &&
        price == other.price &&
        total == other.total &&
        product == other.product;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleData_sale_details')
          ..add('G__typename', G__typename)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('total', total)
          ..add('product', product))
        .toString();
  }
}

class GSaleData_sale_detailsBuilder
    implements Builder<GSaleData_sale_details, GSaleData_sale_detailsBuilder> {
  _$GSaleData_sale_details? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  GSaleData_sale_details_productBuilder? _product;
  GSaleData_sale_details_productBuilder get product =>
      _$this._product ??= new GSaleData_sale_details_productBuilder();
  set product(GSaleData_sale_details_productBuilder? product) =>
      _$this._product = product;

  GSaleData_sale_detailsBuilder() {
    GSaleData_sale_details._initializeBuilder(this);
  }

  GSaleData_sale_detailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _quantity = $v.quantity;
      _price = $v.price;
      _total = $v.total;
      _product = $v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleData_sale_details other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleData_sale_details;
  }

  @override
  void update(void Function(GSaleData_sale_detailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleData_sale_details build() => _build();

  _$GSaleData_sale_details _build() {
    _$GSaleData_sale_details _$result;
    try {
      _$result = _$v ??
          new _$GSaleData_sale_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaleData_sale_details', 'G__typename'),
              quantity: quantity,
              price: price,
              total: total,
              product: _product?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaleData_sale_details', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaleData_sale_details_product extends GSaleData_sale_details_product {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String name;

  factory _$GSaleData_sale_details_product(
          [void Function(GSaleData_sale_details_productBuilder)? updates]) =>
      (new GSaleData_sale_details_productBuilder()..update(updates))._build();

  _$GSaleData_sale_details_product._(
      {required this.G__typename, this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaleData_sale_details_product', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSaleData_sale_details_product', 'name');
  }

  @override
  GSaleData_sale_details_product rebuild(
          void Function(GSaleData_sale_details_productBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaleData_sale_details_productBuilder toBuilder() =>
      new GSaleData_sale_details_productBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaleData_sale_details_product &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaleData_sale_details_product')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GSaleData_sale_details_productBuilder
    implements
        Builder<GSaleData_sale_details_product,
            GSaleData_sale_details_productBuilder> {
  _$GSaleData_sale_details_product? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSaleData_sale_details_productBuilder() {
    GSaleData_sale_details_product._initializeBuilder(this);
  }

  GSaleData_sale_details_productBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaleData_sale_details_product other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaleData_sale_details_product;
  }

  @override
  void update(void Function(GSaleData_sale_details_productBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaleData_sale_details_product build() => _build();

  _$GSaleData_sale_details_product _build() {
    final _$result = _$v ??
        new _$GSaleData_sale_details_product._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSaleData_sale_details_product', 'G__typename'),
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSaleData_sale_details_product', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
