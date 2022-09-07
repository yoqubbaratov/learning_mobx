import 'package:flutter/material.dart';

import '../../model/post_model.dart';
import 'detail_store.dart';

enum DetailState { create, update }

class DetailPage extends StatelessWidget {
  final Post? post;
  final DetailState state;

  const DetailPage({Key? key, this.post, this.state = DetailState.create})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailStore store = DetailStore();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: state == DetailState.create
            ? const Text("Add post")
            : const Text("Update post"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextField(
                  controller: store.titleController,
                  decoration: const InputDecoration(hintText: "Title"),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: store.bodyController,
                  decoration: const InputDecoration(hintText: "Content"),
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width - 60,
                  color: Colors.blue,
                  onPressed: () {
                    if (state == DetailState.create) {
                      store.createPost(context);
                    } else {
                      store.updatePost(context);
                    }
                  },
                  child: const Text("Submit Text"),
                ),
              ],
            ),
          ),
          Visibility(
            visible: store.isLoading,
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
