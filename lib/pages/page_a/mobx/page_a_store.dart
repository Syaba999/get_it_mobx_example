import 'package:get_it_mobx_example/config/routes_val.dart';
import 'package:get_it_mobx_example/pages/page_b/mobx/page_b_store.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:get_it_mobx_example/services/navigator_service.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'page_a_store.g.dart';

class PageAStore = _PageAStore with _$PageAStore;

abstract class _PageAStore extends MobxBase with Store {
  final _navigator =
      InjectorService.getInjector.get<NavigationService>().navigator;

  void onButtonPressed() async {
    await _navigator.pushNamed(pageBRoute);
    InjectorService.getInjector.resetLazySingleton<PageBStore>();
  }

  @override
  void dispose() {}
}
