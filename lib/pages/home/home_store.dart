import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../model/post_model.dart';
import '../../services/network_service.dart';
import '../detail/detail_page.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  ObservableList<Post> list = ObservableList.of([]);

  @observable
  bool isLoading = false;

  @action
  Future<void> getAllPost() async {
    isLoading = true;
    String? response =
        await Network.GET(Network.API_LIST, Network.paramsEmpty());
    if (response != null) {
      list = ObservableList.of(Network.parsePostList(response));
    } else {
      list = ObservableList.of([]);
    }
    isLoading = false;
  }

  @action
  Future<void> delitePost(BuildContext context, Post post) async {
    isLoading = true;
    String? response =
        await Network.DEL(Network.API_DELETE + post.id, Network.paramsEmpty());
    if (response != null) {
      return getAllPost();
    }
    isLoading = false;
  }

  @action
  Future<void> updatePost(BuildContext context, Post post)async{
    String? response = await Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return DetailPage();
    }));
  }

  @action
  Future<void> goToDetailPage(context) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DetailPage()));
    getAllPost();
  }
}
