import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'tradehistory_card_pop_up.dart';

import 'tradinghistory_page_notifier.dart';

class TradingHistoryPage extends StatelessWidget {
  const TradingHistoryPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TradingHistoryPageNotifier,
            TradingHistoryPageState>(
          create: (context) => TradingHistoryPageNotifier(
            context: context,
          ),
        )
      ],
      child: const TradingHistoryPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<TradingHistoryPageNotifier>();
    print('描画');
    return Scaffold(
      appBar: AppBar(
        title: Text('取引履歴'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 210,
                child: Builder(
                  builder: (BuildContext context) {
                    final records = context.select(
                        (TradingHistoryPageState state) => state.record);
                    return ListView.builder(
                      itemCount: records.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TradeHistoryCard(records, index);
                      },
                    );
                  },
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Add Trading History'),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    onPressed: () {
                      notifier.popUpForm();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
