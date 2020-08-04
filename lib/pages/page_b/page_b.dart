import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/pages/page_b/mobx/page_b_store.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:mobx_provider/mobx_provider.dart';

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobxStatelessObserver<PageBStore>(
      store: InjectorService.getInjector.get<PageBStore>(),
      builder: _content,
    );
  }

  Widget _content(BuildContext context, PageBStore store) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page B"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: store.data.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(store.data[index]),
                    )),
          ),
          RaisedButton(
            child: Text("ADD ITEM TO LIST"),
            onPressed: () => store.addData("${store.data.length} ITEM FROM A"),
          ),
          RaisedButton(
            child: Text("GO TO C PAGE"),
            onPressed: store.goToCPage,
          ),
        ],
      ),
    );
  }
}
