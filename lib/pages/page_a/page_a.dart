import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/pages/page_a/mobx/page_a_store.dart';
import 'package:mobx_provider/mobx_provider.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobxStatelessObserver<PageAStore>(
      store: PageAStore(),
      builder: _content,
    );
  }

  Widget _content(BuildContext context, PageAStore store) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page A"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("GO TO B PAGE"),
          onPressed: store.onButtonPressed,
        ),
      ),
    );
  }
}
