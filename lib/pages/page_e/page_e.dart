import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/pages/page_e/mobx/page_e_store.dart';
import 'package:mobx_provider/mobx_provider.dart';

class PageE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page E"),
      ),
      body: MobxStatelessObserver<PageEStore>(
        store: PageEStore(),
        builder: _content,
      ),
    );
  }

  Widget _content(BuildContext context, PageEStore store) {
    if (store.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (store.isError)
            Text(
              store.errorText,
              style: TextStyle(color: Theme.of(context).errorColor),
            ),
          Text("DATA ITEM LENGTH ${store.dataItemLength}"),
          RaisedButton(
            child: Text("FETCH DATA FROM INTERNET"),
            onPressed: store.fetchData,
          ),
          RaisedButton(
            child: Text("TO ERROR STATE"),
            onPressed: store.setErrorState,
          )
        ],
      ),
    );
  }
}
