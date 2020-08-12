import 'package:flutter/material.dart';
import 'package:sql_trial/screens/assets.dart';
import 'package:sql_trial/screens/bank.dart';
import 'package:sql_trial/screens/ecaps.dart';
import 'package:sql_trial/screens/equity.dart';
import 'package:sql_trial/screens/expense.dart';
import 'package:sql_trial/screens/liability.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          padding: EdgeInsets.all(8.0),
          children: [
            tiles(
                Icon(
                  Icons.videogame_asset,
                  size: 40.0,
                ),
                "Assets",
                AssetsList(
                  appTitle: "Assets",
                )),
            tiles(
                Icon(
                  Icons.work,
                  size: 40.0,
                ),
                "Bank Account",
                NoteList(
                  appTitle: "Bank Accounts",
                )),
            tiles(
                Icon(
                  Icons.ac_unit,
                  size: 40.0,
                ),
                "Ecaps",
                Ecapslist(
                  appTitle: "Assets",
                )),
            tiles(
                Icon(
                  Icons.graphic_eq,
                  size: 40.0,
                ),
                "Equity",
                EquityList(
                  appTitle: "Assets",
                )),
            tiles(
                Icon(
                  Icons.equalizer,
                  size: 40.0,
                ),
                "Expanse",
                ExpenseList(
                  appTitle: "Assets",
                )),
            tiles(
                Icon(
                  Icons.label_important,
                  size: 40.0,
                ),
                "Liability",
                Liabilitylist(
                  appTitle: "Assets",
                )),
          ],
        ),
      ),
    );
  }

  Widget tiles(Icon iconer, String title, Widget navigate) {
    return GestureDetector(
      child: Container(
        color: Colors.grey[200],
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: (MediaQuery.of(context).size.width / 2) / 2,
              width: (MediaQuery.of(context).size.width / 2),
              child: Center(
                child: iconer,
              ),
            ),
            Container(
              color: Colors.deepPurple,
              height: (MediaQuery.of(context).size.width / 2) / 2.5,
              width: (MediaQuery.of(context).size.width / 2),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => navigate));
      },
    );
  }
}
