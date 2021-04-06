import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:starter/models/drink.dart';
import 'package:starter/redux/app_state.dart';
import 'package:starter/redux/reducer.dart';
import 'package:redux/redux.dart';
import 'package:starter/redux/redux_screen.dart';
import 'package:starter/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Store<AppState> _store = Store<AppState>(
    updateDrinksReducer,
    initialState: AppState(
      drinks: [
        Drink("Water", false),
        Drink("Cuba Libre", false),
        Drink("Pina Colada", false),
        Drink("Havana Cola", false)
      ],
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: _store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Firebase Redux Starter",
        theme: ThemeData.light().copyWith(primaryColor: Color(0xFFe13133)),
        // home: ReduxScreen(),
        routes: {
          '/': (context) => HomeScreen(),
          '/redux': (context) => ReduxScreen()
        },
      ),
    );
  }
}
