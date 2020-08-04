import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/pages/page_c/mobx/page_c_store.dart';
import 'package:mobx_provider/mobx_provider.dart';

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobxStatelessObserver<PageCStore>(
      store: PageCStore(),
      builder: _content,
    );
  }

  Widget _content(BuildContext context, PageCStore store) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("ADD DATA ITEM TO B STORE"),
              onPressed: () => store.addData("ITEM FROM C PAGE"),
            ),
            RaisedButton(
              child: Text("GO TO E PAGE"),
              onPressed: store.goToEPage,
            ),
          ],
        ),
      ),
    );
  }
}
