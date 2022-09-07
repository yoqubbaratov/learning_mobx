import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_mobx/pages/home/home_store.dart';
import 'package:learning_mobx/services/service_locator.dart';
import 'package:mobx/mobx.dart';

import '../../model/post_model.dart';
import '../../services/network_service.dart';
part 'detail_store.g.dart';

class DetailStore = DetailStoreBase with _$DetailStore;
abstract class DetailStoreBase with Store{
  @observable
  TextEditingController titleController = TextEditingController();
  @observable
  TextEditingController bodyController = TextEditingController();
  @observable
  bool isLoading = false;


  @action
  Future<void> createPost(BuildContext context) async {
    String title = titleController.text.trim();
    String body = bodyController.text.trim();

    Post post = Post(id: "01", title: title, body: body, userId: "1");
    isLoading = true;
    await Network.POST(Network.API_CREATE, Network.paramsCreate(post));
    isLoading = false;
    Navigator.pop(context);
  }

  @action
  Future<void> updatePost(context) async {
    String title = titleController.text.trim();
    String body = bodyController.text.trim();

    Post post = Post(
        id: Random().nextInt(100).toString(),
        title: title,
        body: body,
        userId: Random().nextInt(100).toString());
    isLoading = true;
    Network.PUT(Network.API_UPDATE, post.toJson()).then((value) => {
      Navigator.pop(context),
    });
    isLoading = false;
  }


}