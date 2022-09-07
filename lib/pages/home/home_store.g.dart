// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$listAtom = Atom(name: 'HomeStoreBase.list', context: context);

  @override
  ObservableList<Post> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<Post> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomeStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAllPostAsyncAction =
      AsyncAction('HomeStoreBase.getAllPost', context: context);

  @override
  Future<void> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  late final _$delitePostAsyncAction =
      AsyncAction('HomeStoreBase.delitePost', context: context);

  @override
  Future<void> delitePost(BuildContext context, Post post) {
    return _$delitePostAsyncAction.run(() => super.delitePost(context, post));
  }

  late final _$updatePostAsyncAction =
      AsyncAction('HomeStoreBase.updatePost', context: context);

  @override
  Future<void> updatePost(BuildContext context, Post post) {
    return _$updatePostAsyncAction.run(() => super.updatePost(context, post));
  }

  late final _$goToDetailPageAsyncAction =
      AsyncAction('HomeStoreBase.goToDetailPage', context: context);

  @override
  Future<void> goToDetailPage(dynamic context) {
    return _$goToDetailPageAsyncAction.run(() => super.goToDetailPage(context));
  }

  @override
  String toString() {
    return '''
list: ${list},
isLoading: ${isLoading}
    ''';
  }
}
