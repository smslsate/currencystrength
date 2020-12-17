import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/providerbottomnavigationbar.dart';
import 'screen/weeklyreport_page/weeklyreport.dart';
import 'screen/traidinghistory_page/tradinghistory_page.dart';

import 'package:flutter/cupertino.dart';
import 'screen/currency_page/currency_page.dart';
import 'screen/login_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        create: (_) => BottomNavigationBarProvider(),
        child: BottomNavigationBarExample(),
      ),
      theme: ThemeData.dark(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  var currentTab = [
    Home1(),
    TradingHistoryPage.wrapped(),
    AnimatedOpacityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 16,
        unselectedFontSize: 14,
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Currency'),
            icon: Icon(Icons.attach_money),
          ),
          BottomNavigationBarItem(
            title: Text('取引履歴'),
            icon: Icon(Icons.mode_rounded),
          ),
          BottomNavigationBarItem(
            title: Text('Weekly report'),
            icon: Icon(Icons.receipt_outlined),
          ),
        ],
      ),
    );
  }
}
