import 'package:flutter/material.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

// One simple action: Increment
enum Actions { Increment }

// The reducer, which takes the previous count and increments it in response
// to an Increment action.
int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}

void main() async {
  // var remoteDevtools = RemoteDevToolsMiddleware('locahost:8000');
  // await remoteDevtools.connect();
  // final store = DevToolsStore<int>(counterReducer,
  //     initialState: 0, middleware: [remoteDevtools]);

  // remoteDevtools.store = store;

  // runApp(new MyApp(
  //   store: store,
  // ));
  //

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // final Store<int> store;
  final _store = DevToolsStore<int>(counterReducer, initialState: 0);
  //MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<int>(
      store: _store,
      child: new MaterialApp(
        theme: new ThemeData.dark(),
        title: "Flutter redux",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter Redux App"),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  'You have pushed the button this many times:',
                ),
                new StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return new Text(
                      count,
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                )
              ],
            ),
          ),
          floatingActionButton: new StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) {
              return new FloatingActionButton(
                onPressed: callback,
                tooltip: 'asdasdasd',
                child: new Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}
