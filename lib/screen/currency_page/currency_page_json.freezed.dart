// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'currency_page_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
class _$CurrencyTearOff {
  const _$CurrencyTearOff();

// ignore: unused_element
  _Currency call(
      {@required List<MapEntry<String, String>> rates,
      @required String date,
      @required String base}) {
    return _Currency(
      rates: rates,
      date: date,
      base: base,
    );
  }

// ignore: unused_element
  Currency fromJson(Map<String, Object> json) {
    return Currency.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Currency = _$CurrencyTearOff();

/// @nodoc
mixin _$Currency {
  List<MapEntry<String, String>> get rates;
  String get date;
  String get base;

  Map<String, dynamic> toJson();
  $CurrencyCopyWith<Currency> get copyWith;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call({List<MapEntry<String, String>> rates, String date, String base});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object rates = freezed,
    Object date = freezed,
    Object base = freezed,
  }) {
    return _then(_value.copyWith(
      rates: rates == freezed
          ? _value.rates
          : rates as List<MapEntry<String, String>>,
      date: date == freezed ? _value.date : date as String,
      base: base == freezed ? _value.base : base as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) then) =
      __$CurrencyCopyWithImpl<$Res>;
  @override
  $Res call({List<MapEntry<String, String>> rates, String date, String base});
}

/// @nodoc
class __$CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(_Currency _value, $Res Function(_Currency) _then)
      : super(_value, (v) => _then(v as _Currency));

  @override
  _Currency get _value => super._value as _Currency;

  @override
  $Res call({
    Object rates = freezed,
    Object date = freezed,
    Object base = freezed,
  }) {
    return _then(_Currency(
      rates: rates == freezed
          ? _value.rates
          : rates as List<MapEntry<String, String>>,
      date: date == freezed ? _value.date : date as String,
      base: base == freezed ? _value.base : base as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Currency with DiagnosticableTreeMixin implements _Currency {
  const _$_Currency(
      {@required this.rates, @required this.date, @required this.base})
      : assert(rates != null),
        assert(date != null),
        assert(base != null);

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyFromJson(json);

  @override
  final List<MapEntry<String, String>> rates;
  @override
  final String date;
  @override
  final String base;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Currency(rates: $rates, date: $date, base: $base)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Currency'))
      ..add(DiagnosticsProperty('rates', rates))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('base', base));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Currency &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.base, base) ||
                const DeepCollectionEquality().equals(other.base, base)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rates) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(base);

  @override
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrencyToJson(this);
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {@required List<MapEntry<String, String>> rates,
      @required String date,
      @required String base}) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  List<MapEntry<String, String>> get rates;
  @override
  String get date;
  @override
  String get base;
  @override
  _$CurrencyCopyWith<_Currency> get copyWith;
}
