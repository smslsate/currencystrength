import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

part 'currency_page_json.freezed.dart';
part 'currency_page_json.g.dart';

@freezed
abstract class Currency with _$Currency {
  const factory Currency({
    @required List<MapEntry<String, dynamic>> rates,
    @required String date,
    @required String base,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
