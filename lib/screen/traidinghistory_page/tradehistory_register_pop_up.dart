import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TradeHistoryRegisterPopUp extends StatelessWidget {
  const TradeHistoryRegisterPopUp(this.saveCurrencypair, this.saveWeight,
      this.savePips, this.saveComment, this.registerOnTap);

  final dynamic saveCurrencypair;
  final dynamic saveWeight;
  final dynamic savePips;
  final dynamic saveComment;
  final dynamic registerOnTap;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('保有していたポジション'),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 24,
      ),
      children: [
        Container(
          width: 150,
          padding: EdgeInsets.only(left: 4),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ex) EUR/USD',
                labelText: '通貨ペア'),
            onChanged: (value) {
              saveCurrencypair(value);
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(left: 4),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ex) 0.01~100',
                  labelText: 'Lot',
                ),
                onChanged: (value) {
                  saveWeight(value);
                },
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('lot'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(left: 4),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ex) 2.0 or -2.0',
                  labelText: 'Pips',
                ),
                onChanged: (value) {
                  savePips(value);
                },
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('pips'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          padding: EdgeInsets.only(left: 4),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'しっかり反省',
                labelText: '反省点/改善点'),
            onChanged: (value) {
              saveComment(value);
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '登録',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () {
            registerOnTap();
          },
        )
      ],
    );
  }
}
