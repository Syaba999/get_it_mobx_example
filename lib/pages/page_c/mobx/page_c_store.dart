import 'package:get_it_mobx_example/config/routes_val.dart';
import 'package:get_it_mobx_example/pages/page_b/mobx/page_b_store.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:get_it_mobx_example/services/navigator_service.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'page_c_store.g.dart';

class PageCStore = _PageCStore with _$PageCStore;

abstract class _PageCStore extends MobxBase with Store {
  final _pageBStore = InjectorService.getInjector.get<PageBStore>();
  final _navigator =
      InjectorService.getInjector.get<NavigationService>().navigator;

  void addData(String dataItem) =>
      _pageBStore.addData("${_pageBStore.data.length} $dataItem");

  void goToEPage() {
    _navigator.pushNamed(pageERoute);
  }

  @override
  void dispose() {}
}
