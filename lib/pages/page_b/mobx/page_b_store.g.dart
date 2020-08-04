// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_b_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageBStore on _PageBStore, Store {
  final _$_dataAtom = Atom(name: '_PageBStore._data');

  @override
  List<String> get _data {
    _$_dataAtom.reportRead();
    return super._data;
  }

  @override
  set _data(List<String> value) {
    _$_dataAtom.reportWrite(value, super._data, () {
      super._data = value;
    });
  }

  final _$_PageBStoreActionController = ActionController(name: '_PageBStore');

  @override
  void addData(String dataItem) {
    final _$actionInfo =
        _$_PageBStoreActionController.startAction(name: '_PageBStore.addData');
    try {
      return super.addData(dataItem);
    } finally {
      _$_PageBStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addListData(List<String> anotherData) {
    final _$actionInfo = _$_PageBStoreActionController.startAction(
        name: '_PageBStore.addListData');
    try {
      return super.addListData(anotherData);
    } finally {
      _$_PageBStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
