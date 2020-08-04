import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_mobx_example/pages/page_b/mobx/page_b_store.dart';
import 'package:get_it_mobx_example/services/navigator_service.dart';

abstract class InjectorService {
  static GetIt getInjector = GetIt.instance;

  static void setup(GlobalKey<NavigatorState> navigationKey) {
    getInjector
        .registerSingleton<NavigationService>(NavigationService(navigationKey));
    getInjector.registerLazySingleton<PageBStore>(() => PageBStore());
  }
}
