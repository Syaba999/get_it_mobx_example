import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey;
  NavigationService(this._navigatorKey);

  NavigatorState get navigator => _navigatorKey.currentState;
}
