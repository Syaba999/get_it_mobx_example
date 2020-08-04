import 'package:get_it_mobx_example/config/routes_val.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:get_it_mobx_example/services/navigator_service.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'page_b_store.g.dart';

class PageBStore = _PageBStore with _$PageBStore;

abstract class _PageBStore extends MobxBase with Store {
  final _navigator =
      InjectorService.getInjector.get<NavigationService>().navigator;

  @observable
  List<String> _data = List();

  List<String> get data => _data;

  @action
  void addData(String dataItem) {
    _data = List.from(_data)..add(dataItem);
  }

  @action
  void addListData(List<String> anotherData) {
    _data = List.from(_data)..addAll(anotherData);
  }

  void goToCPage() {
    _navigator.pushNamed(pageCRoute);
  }

  @override
  void dispose() {}
}
