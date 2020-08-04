import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/pages/loading/mobx/loading_store.dart';
import 'package:mobx_provider/mobx_provider.dart';

class LoadingPage extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const LoadingPage({Key key, @required this.navigatorKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MobxStatefulObserver<LoadingStore>(
      store: LoadingStore(),
      initFunction: (store) => store.init(navigatorKey),
      builder: _content,
    );
  }

  Widget _content(BuildContext context, LoadingStore store) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
