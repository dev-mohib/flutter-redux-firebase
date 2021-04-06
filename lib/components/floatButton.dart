import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
// import '../redux/types/authTypes.dart';

enum Actions { Increment }

class FloatActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<int, VoidCallback>(
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
    );
  }
}
