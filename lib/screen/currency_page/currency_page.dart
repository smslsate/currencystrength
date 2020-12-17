import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

import 'currencyparsejson.dart';

class Home1 extends StatefulWidget {
  Home1({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  Future<Currency> _data;
  String _base = "USD";
  @override
  void initState() {
    super.initState();
    _data = fetchAPI(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Currency Exchange",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
        centerTitle: false,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                _base = value.toString();
                _data = fetchAPI(http.Client());
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("USD"),
                value: "USD",
              ),
              PopupMenuItem(
                child: Text("EUR"),
                value: "EUR",
              ),
              PopupMenuItem(
                child: Text("JPY"),
                value: "JPY",
              ),
              PopupMenuItem(
                child: Text("GBP"),
                value: "GBP",
              ),
              PopupMenuItem(
                child: Text("CHF"),
                value: "CHF",
              ),
              PopupMenuItem(
                child: Text("NZD"),
                value: "NZD",
              ),
              PopupMenuItem(
                child: Text("AUD"),
                value: "AUD",
              ),
              PopupMenuItem(
                child: Text("CAD"),
                value: "CAD",
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  "$_base",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.lightGreenAccent[700]),
                )
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _data,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ListView.builder(
                        itemCount: snapshot.data.rates.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black87,
                                  width: 3,
                                ),
                              ),
                            ),
                            child: RowView(context, snapshot.data.rates[index]),
                          );
                        },
                      )
                    : Center(
                        child: CupertinoActivityIndicator(),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget RowView(BuildContext context, MapEntry<String, dynamic> rate) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(
            Icons.monetization_on_sharp,
            size: 55,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rate.key,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    rate.value.toString(),
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<Currency> fetchAPI(http.Client client) async {
    final response =
        await client.get("https://api.exchangeratesapi.io/latest?base=$_base");
    final parsedData = jsonDecode(response.body).cast<String, dynamic>();
    return Currency.fromJSON(parsedData);
  }
}
