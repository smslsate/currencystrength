import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'tradehistory_register_pop_up.dart';

part 'tradinghistory_page_notifier.freezed.dart';

@freezed
abstract class TradingHistoryPageState with _$TradingHistoryPageState {
  const factory TradingHistoryPageState({
    @Default(0) int count,
    String weight,
    String pips,
    String currencypair,
    String comment,
    @Default([]) List<Map<String, String>> record,
  }) = _TradingHistoryPageState;
}

class TradingHistoryPageNotifier extends StateNotifier<TradingHistoryPageState>
    with LocatorMixin {
  TradingHistoryPageNotifier({
    @required this.context,
  }) : super(const TradingHistoryPageState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void initState() {}

  void popUpForm() {
    showDialog(
      context: context,
      builder: (context) {
        return TradeHistoryRegisterPopUp(
            _saveCurrencypair, _saveWeight, _savePips, _saveComment, _register);
      },
    );
  }

  void _saveCurrencypair(String value) {
    state = state.copyWith(currencypair: value);
    print(state.currencypair);
  }

  void _saveWeight(String value) {
    state = state.copyWith(weight: value);
    print(state.weight);
  }

  void _savePips(String value) {
    state = state.copyWith(pips: value);
    print(state.pips);
  }

  void _saveComment(String value) {
    state = state.copyWith(comment: value);
    print(state.comment);
  }

  void _register() {
    final dateTime = DateTime.now();
    final day = '${dateTime.year}年${dateTime.month}月${dateTime.day}日';
    final formRecord = {
      'currencypair': state.currencypair,
      'weight': state.weight,
      'pips': state.pips,
      'comment': state.comment,
      'day': day,
    };
    print(formRecord);
    final newRecord = List<Map<String, String>>.from(state.record);
    newRecord.add(formRecord);
    state = state.copyWith(record: newRecord);
    print(state.record);
    Navigator.pop(context);
  }
}
