// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tradinghistory_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TradingHistoryPageStateTearOff {
  const _$TradingHistoryPageStateTearOff();

// ignore: unused_element
  _TradingHistoryPageState call(
      {int count = 0,
      String weight,
      String pips,
      String currencypair,
      String comment,
      List<Map<String, String>> record = const []}) {
    return _TradingHistoryPageState(
      count: count,
      weight: weight,
      pips: pips,
      currencypair: currencypair,
      comment: comment,
      record: record,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TradingHistoryPageState = _$TradingHistoryPageStateTearOff();

/// @nodoc
mixin _$TradingHistoryPageState {
  int get count;
  String get weight;
  String get pips;
  String get currencypair;
  String get comment;
  List<Map<String, String>> get record;

  $TradingHistoryPageStateCopyWith<TradingHistoryPageState> get copyWith;
}

/// @nodoc
abstract class $TradingHistoryPageStateCopyWith<$Res> {
  factory $TradingHistoryPageStateCopyWith(TradingHistoryPageState value,
          $Res Function(TradingHistoryPageState) then) =
      _$TradingHistoryPageStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String weight,
      String pips,
      String currencypair,
      String comment,
      List<Map<String, String>> record});
}

/// @nodoc
class _$TradingHistoryPageStateCopyWithImpl<$Res>
    implements $TradingHistoryPageStateCopyWith<$Res> {
  _$TradingHistoryPageStateCopyWithImpl(this._value, this._then);

  final TradingHistoryPageState _value;
  // ignore: unused_field
  final $Res Function(TradingHistoryPageState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object weight = freezed,
    Object pips = freezed,
    Object currencypair = freezed,
    Object comment = freezed,
    Object record = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      weight: weight == freezed ? _value.weight : weight as String,
      pips: pips == freezed ? _value.pips : pips as String,
      currencypair: currencypair == freezed
          ? _value.currencypair
          : currencypair as String,
      comment: comment == freezed ? _value.comment : comment as String,
      record: record == freezed
          ? _value.record
          : record as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
abstract class _$TradingHistoryPageStateCopyWith<$Res>
    implements $TradingHistoryPageStateCopyWith<$Res> {
  factory _$TradingHistoryPageStateCopyWith(_TradingHistoryPageState value,
          $Res Function(_TradingHistoryPageState) then) =
      __$TradingHistoryPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String weight,
      String pips,
      String currencypair,
      String comment,
      List<Map<String, String>> record});
}

/// @nodoc
class __$TradingHistoryPageStateCopyWithImpl<$Res>
    extends _$TradingHistoryPageStateCopyWithImpl<$Res>
    implements _$TradingHistoryPageStateCopyWith<$Res> {
  __$TradingHistoryPageStateCopyWithImpl(_TradingHistoryPageState _value,
      $Res Function(_TradingHistoryPageState) _then)
      : super(_value, (v) => _then(v as _TradingHistoryPageState));

  @override
  _TradingHistoryPageState get _value =>
      super._value as _TradingHistoryPageState;

  @override
  $Res call({
    Object count = freezed,
    Object weight = freezed,
    Object pips = freezed,
    Object currencypair = freezed,
    Object comment = freezed,
    Object record = freezed,
  }) {
    return _then(_TradingHistoryPageState(
      count: count == freezed ? _value.count : count as int,
      weight: weight == freezed ? _value.weight : weight as String,
      pips: pips == freezed ? _value.pips : pips as String,
      currencypair: currencypair == freezed
          ? _value.currencypair
          : currencypair as String,
      comment: comment == freezed ? _value.comment : comment as String,
      record: record == freezed
          ? _value.record
          : record as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
class _$_TradingHistoryPageState
    with DiagnosticableTreeMixin
    implements _TradingHistoryPageState {
  const _$_TradingHistoryPageState(
      {this.count = 0,
      this.weight,
      this.pips,
      this.currencypair,
      this.comment,
      this.record = const []})
      : assert(count != null),
        assert(record != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final String weight;
  @override
  final String pips;
  @override
  final String currencypair;
  @override
  final String comment;
  @JsonKey(defaultValue: const [])
  @override
  final List<Map<String, String>> record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TradingHistoryPageState(count: $count, weight: $weight, pips: $pips, currencypair: $currencypair, comment: $comment, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TradingHistoryPageState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('pips', pips))
      ..add(DiagnosticsProperty('currencypair', currencypair))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TradingHistoryPageState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.pips, pips) ||
                const DeepCollectionEquality().equals(other.pips, pips)) &&
            (identical(other.currencypair, currencypair) ||
                const DeepCollectionEquality()
                    .equals(other.currencypair, currencypair)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.record, record) ||
                const DeepCollectionEquality().equals(other.record, record)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(pips) ^
      const DeepCollectionEquality().hash(currencypair) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(record);

  @override
  _$TradingHistoryPageStateCopyWith<_TradingHistoryPageState> get copyWith =>
      __$TradingHistoryPageStateCopyWithImpl<_TradingHistoryPageState>(
          this, _$identity);
}

abstract class _TradingHistoryPageState implements TradingHistoryPageState {
  const factory _TradingHistoryPageState(
      {int count,
      String weight,
      String pips,
      String currencypair,
      String comment,
      List<Map<String, String>> record}) = _$_TradingHistoryPageState;

  @override
  int get count;
  @override
  String get weight;
  @override
  String get pips;
  @override
  String get currencypair;
  @override
  String get comment;
  @override
  List<Map<String, String>> get record;
  @override
  _$TradingHistoryPageStateCopyWith<_TradingHistoryPageState> get copyWith;
}
