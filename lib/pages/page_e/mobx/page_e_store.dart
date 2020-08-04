import 'package:get_it_mobx_example/pages/page_b/mobx/page_b_store.dart';
import 'package:get_it_mobx_example/services/injector_service.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'page_e_store.g.dart';

class PageEStore = _PageEStore with _$PageEStore;

abstract class _PageEStore extends MobxBase with Store {
  final _pageBStore = InjectorService.getInjector.get<PageBStore>();

  String errorText;

  int get dataItemLength => _pageBStore.data.length;

  Future<void> fetchData() async {
    toLoadingState();
    await Future.delayed(Duration(seconds: 2));
    final dataList = List<String>.generate(
        10, (index) => "${dataItemLength + index} ITEM FROM E");
    _pageBStore.addListData(dataList);
    toSuccessState();
  }

  void setErrorState() {
    if (state == StoreState.error) {
      toSuccessState();
    } else {
      errorText = "SIMPLE ERROR TEXT";
      toErrorState();
    }
  }

  @override
  void dispose() {}
}
