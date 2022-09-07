// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailStore on DetailStoreBase, Store {
  late final _$titleControllerAtom =
      Atom(name: 'DetailStoreBase.titleController', context: context);

  @override
  TextEditingController get titleController {
    _$titleControllerAtom.reportRead();
    return super.titleController;
  }

  @override
  set titleController(TextEditingController value) {
    _$titleControllerAtom.reportWrite(value, super.titleController, () {
      super.titleController = value;
    });
  }

  late final _$bodyControllerAtom =
      Atom(name: 'DetailStoreBase.bodyController', context: context);

  @override
  TextEditingController get bodyController {
    _$bodyControllerAtom.reportRead();
    return super.bodyController;
  }

  @override
  set bodyController(TextEditingController value) {
    _$bodyControllerAtom.reportWrite(value, super.bodyController, () {
      super.bodyController = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'DetailStoreBase.isLoading', context: context);

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

  late final _$createPostAsyncAction =
      AsyncAction('DetailStoreBase.createPost', context: context);

  @override
  Future<void> createPost(BuildContext context) {
    return _$createPostAsyncAction.run(() => super.createPost(context));
  }

  late final _$updatePostAsyncAction =
      AsyncAction('DetailStoreBase.updatePost', context: context);

  @override
  Future<void> updatePost(dynamic context) {
    return _$updatePostAsyncAction.run(() => super.updatePost(context));
  }


  @override
  String toString() {
    return '''
titleController: ${titleController},
bodyController: ${bodyController},
isLoading: ${isLoading}
    ''';
  }
}
