import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/config/routes_val.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:get_it_mobx_example/services/navigator_service.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'loading_store.g.dart';

class LoadingStore = _LoadingStore with _$LoadingStore;

abstract class _LoadingStore extends MobxBase with Store {
  Future<void> init(GlobalKey<NavigatorState> navigatorKey) async {
    await Future.delayed(Duration(seconds: 2));
    InjectorService.setup(navigatorKey);
    await InjectorService.getInjector.allReady();
    final navigator =
        InjectorService.getInjector.get<NavigationService>().navigator;
    navigator.popAndPushNamed(pageARoute);
  }

  @override
  void dispose() {}
}
