import 'package:flutter/services.dart';

import '../types/authTypes.dart';

int counterReducer(int state, dynamic action) {
  switch (action) {
    case Actions.increment:
      return state + 1;
    default:
      return state;
  }
}
